#include "layer.h"
#include "activations.h"
#include "error.h"
#include "accelerator.h"
#include "utils.h"
#include <vector>
#include <iostream> 

using namespace std;

void top(
    std::array<std::array<std::array<fixed6_6, 1>, IN_SIZE>, TRAIN_SIZE>& input_train,
    std::array<std::array<fixed6_6, OUT_SIZE>, TRAIN_SIZE>& y_train,
    std::array<std::array<std::array<fixed6_6, 1>, IN_SIZE>, TEST_SIZE>& input_test,
    std::array<std::array<fixed6_6, OUT_SIZE>, TEST_SIZE>& y_test,
    fixed32_8& train_accuracy,
    fixed32_8& test_accuracy,
    int& done
){
    #pragma HLS INTERFACE s_axilite port=input_train bundle=BUS
    #pragma HLS INTERFACE s_axilite port=y_train bundle=BUS
    #pragma HLS INTERFACE s_axilite port=input_test bundle=BUS
    #pragma HLS INTERFACE s_axilite port=y_test bundle=BUS
    #pragma HLS INTERFACE s_axilite port=train_accuracy bundle=BUS
    #pragma HLS INTERFACE s_axilite port=test_accuracy bundle=BUS
    #pragma HLS INTERFACE s_axilite port=done bundle=BUS

    std::array<std::array<fixed32_8, IN_SIZE>, L1_SIZE> weights_l1 = {{
        {{fixed32_8(-0.08508530), fixed32_8(-0.02892900), fixed32_8(-0.02975860), fixed32_8(-0.01997880), fixed32_8(0.08838610), fixed32_8(0.06033330), fixed32_8(0.03643510), fixed32_8(0.03752860), fixed32_8(-0.00603695), fixed32_8(0.03037270), fixed32_8(-0.03686940), fixed32_8(0.08277670), fixed32_8(0.04146250), fixed32_8(-0.08709560), fixed32_8(-0.01959830), fixed32_8(0.08264850), fixed32_8(-0.05415040), fixed32_8(0.01061400), fixed32_8(0.02377260), fixed32_8(0.00660743), fixed32_8(0.05487000), fixed32_8(-0.05232070), fixed32_8(0.04949580), fixed32_8(0.01520550), fixed32_8(-0.02374160), fixed32_8(0.03420050), fixed32_8(-0.06295830), fixed32_8(-0.06215730), fixed32_8(-0.05591800), fixed32_8(0.02834020), fixed32_8(-0.02105160), fixed32_8(0.08043460), fixed32_8(0.05842260), fixed32_8(-0.01533340), fixed32_8(-0.05663970), fixed32_8(0.06725630), fixed32_8(0.02298130), fixed32_8(0.05642670), fixed32_8(0.05438700), fixed32_8(0.08613030), fixed32_8(-0.02420490), fixed32_8(-0.04795040), fixed32_8(-0.00652421), fixed32_8(0.07378710), fixed32_8(-0.03178240), fixed32_8(0.03499120), fixed32_8(0.08479580), fixed32_8(0.05356940), fixed32_8(-0.04546440), fixed32_8(-0.02109650), fixed32_8(0.04998020), fixed32_8(-0.06103620), fixed32_8(-0.01057350), fixed32_8(-0.01740950), fixed32_8(0.01799010), fixed32_8(-0.06861040), fixed32_8(-0.08412720), fixed32_8(0.02656190), fixed32_8(-0.02381750), fixed32_8(0.06411120), fixed32_8(0.05533800), fixed32_8(-0.04021790), fixed32_8(0.04199880), fixed32_8(-0.06538710)}},
        {{fixed32_8(-0.08506900), fixed32_8(-0.05451350), fixed32_8(-0.04367820), fixed32_8(0.06531810), fixed32_8(0.06971310), fixed32_8(-0.06351550), fixed32_8(-0.06937760), fixed32_8(-0.03994600), fixed32_8(0.03365410), fixed32_8(0.08641990), fixed32_8(0.04142070), fixed32_8(0.03527000), fixed32_8(0.05713920), fixed32_8(0.00326433), fixed32_8(0.03363300), fixed32_8(-0.06417100), fixed32_8(0.03422490), fixed32_8(0.08794890), fixed32_8(0.05492840), fixed32_8(-0.00297503), fixed32_8(-0.07705990), fixed32_8(-0.03171100), fixed32_8(0.04558340), fixed32_8(0.01657420), fixed32_8(-0.07711800), fixed32_8(-0.06961320), fixed32_8(-0.06559140), fixed32_8(-0.06182160), fixed32_8(0.03254470), fixed32_8(0.02532900), fixed32_8(-0.03556200), fixed32_8(-0.07339250), fixed32_8(0.01035530), fixed32_8(-0.02174610), fixed32_8(-0.04028300), fixed32_8(-0.03400750), fixed32_8(0.02721900), fixed32_8(-0.07560860), fixed32_8(0.00818837), fixed32_8(0.03173120), fixed32_8(0.08657350), fixed32_8(-0.01886360), fixed32_8(-0.07076900), fixed32_8(-0.05377470), fixed32_8(0.05902310), fixed32_8(0.06739150), fixed32_8(-0.06070050), fixed32_8(0.01557290), fixed32_8(-0.06986510), fixed32_8(0.03243680), fixed32_8(0.06084140), fixed32_8(-0.04940920), fixed32_8(0.01692520), fixed32_8(-0.03979200), fixed32_8(-0.05683910), fixed32_8(0.04613900), fixed32_8(-0.06348650), fixed32_8(-0.04487650), fixed32_8(-0.07267820), fixed32_8(-0.02905460), fixed32_8(0.03026840), fixed32_8(-0.06398250), fixed32_8(0.07059320), fixed32_8(0.02228130)}},
        {{fixed32_8(-0.06184920), fixed32_8(0.07359460), fixed32_8(0.07527770), fixed32_8(0.00434847), fixed32_8(0.07680560), fixed32_8(0.03407130), fixed32_8(-0.03399690), fixed32_8(-0.02317470), fixed32_8(-0.05669250), fixed32_8(0.06642950), fixed32_8(-0.02188210), fixed32_8(0.05125000), fixed32_8(-0.01341040), fixed32_8(-0.00356620), fixed32_8(0.04685870), fixed32_8(-0.05544140), fixed32_8(-0.02544840), fixed32_8(0.06511540), fixed32_8(0.02206000), fixed32_8(0.06275640), fixed32_8(0.04642100), fixed32_8(-0.04813790), fixed32_8(0.04577280), fixed32_8(0.00959257), fixed32_8(0.04821830), fixed32_8(0.01689350), fixed32_8(0.03878660), fixed32_8(-0.06143780), fixed32_8(-0.00611898), fixed32_8(0.01430910), fixed32_8(-0.06318310), fixed32_8(0.03727760), fixed32_8(-0.02235940), fixed32_8(0.06670240), fixed32_8(0.07584620), fixed32_8(0.04313470), fixed32_8(0.01612130), fixed32_8(0.02521000), fixed32_8(0.07873440), fixed32_8(-0.05420800), fixed32_8(0.07717830), fixed32_8(0.02871760), fixed32_8(-0.08116660), fixed32_8(0.00705992), fixed32_8(0.07698750), fixed32_8(0.00520330), fixed32_8(0.02599300), fixed32_8(0.02759570), fixed32_8(0.04662610), fixed32_8(0.07277630), fixed32_8(0.02456470), fixed32_8(0.05025090), fixed32_8(-0.06063690), fixed32_8(0.02932830), fixed32_8(0.00515098), fixed32_8(0.08089490), fixed32_8(-0.05948770), fixed32_8(0.01346230), fixed32_8(-0.06558650), fixed32_8(0.01266200), fixed32_8(0.03241730), fixed32_8(0.05285200), fixed32_8(0.06289900), fixed32_8(-0.06367220)}},
        {{fixed32_8(-0.07755360), fixed32_8(-0.07511940), fixed32_8(-0.00527096), fixed32_8(0.07084410), fixed32_8(0.06734220), fixed32_8(-0.03635030), fixed32_8(0.05030290), fixed32_8(0.00501950), fixed32_8(-0.00086329), fixed32_8(0.06678860), fixed32_8(-0.00587055), fixed32_8(0.08684790), fixed32_8(0.03961480), fixed32_8(-0.05865980), fixed32_8(0.02377860), fixed32_8(0.04651700), fixed32_8(0.07226770), fixed32_8(0.00106463), fixed32_8(-0.07243900), fixed32_8(-0.06425970), fixed32_8(0.05426410), fixed32_8(0.02571740), fixed32_8(-0.04970230), fixed32_8(0.02662220), fixed32_8(-0.01420550), fixed32_8(0.06106470), fixed32_8(-0.04912410), fixed32_8(0.07405960), fixed32_8(-0.03608180), fixed32_8(-0.06696650), fixed32_8(0.06078910), fixed32_8(0.06450570), fixed32_8(0.07919520), fixed32_8(0.05463160), fixed32_8(0.05128080), fixed32_8(0.07678590), fixed32_8(-0.06344510), fixed32_8(0.01845710), fixed32_8(-0.02390030), fixed32_8(0.05647590), fixed32_8(0.04216050), fixed32_8(0.02758980), fixed32_8(0.03263470), fixed32_8(-0.08371590), fixed32_8(-0.00817053), fixed32_8(-0.05276690), fixed32_8(-0.05065250), fixed32_8(0.08429140), fixed32_8(0.05421670), fixed32_8(-0.05574050), fixed32_8(-0.05033890), fixed32_8(-0.08256950), fixed32_8(-0.05744560), fixed32_8(-0.05597520), fixed32_8(0.07530410), fixed32_8(0.06315950), fixed32_8(0.00653447), fixed32_8(0.00645748), fixed32_8(0.01160060), fixed32_8(-0.00581287), fixed32_8(-0.00610789), fixed32_8(-0.00593737), fixed32_8(-0.04013620), fixed32_8(-0.07640840)}},
        {{fixed32_8(0.05613220), fixed32_8(-0.08002760), fixed32_8(-0.03340540), fixed32_8(-0.07285060), fixed32_8(-0.05083180), fixed32_8(-0.03130420), fixed32_8(-0.06625260), fixed32_8(-0.08317800), fixed32_8(0.05941900), fixed32_8(-0.05081340), fixed32_8(-0.04041790), fixed32_8(-0.02304850), fixed32_8(-0.04137020), fixed32_8(0.00901580), fixed32_8(0.02319090), fixed32_8(0.03775710), fixed32_8(0.08672510), fixed32_8(0.04539620), fixed32_8(-0.01891140), fixed32_8(-0.02052190), fixed32_8(0.01325840), fixed32_8(-0.02991170), fixed32_8(-0.01186590), fixed32_8(0.00658560), fixed32_8(0.03254360), fixed32_8(0.08704890), fixed32_8(0.01560200), fixed32_8(-0.05484310), fixed32_8(0.06426670), fixed32_8(-0.00275767), fixed32_8(0.07506050), fixed32_8(-0.01305440), fixed32_8(-0.08731680), fixed32_8(-0.03771140), fixed32_8(0.05498260), fixed32_8(0.00737347), fixed32_8(0.06976180), fixed32_8(0.04437710), fixed32_8(0.00204946), fixed32_8(-0.03311260), fixed32_8(0.03784250), fixed32_8(-0.05831010), fixed32_8(-0.05365120), fixed32_8(0.02865790), fixed32_8(0.00386542), fixed32_8(-0.07811230), fixed32_8(-0.02071740), fixed32_8(-0.04191330), fixed32_8(-0.06438610), fixed32_8(-0.01841440), fixed32_8(-0.02377460), fixed32_8(0.03152210), fixed32_8(0.01195720), fixed32_8(0.07993040), fixed32_8(0.04140610), fixed32_8(0.03160200), fixed32_8(-0.03654150), fixed32_8(-0.05708560), fixed32_8(-0.03826160), fixed32_8(0.06144600), fixed32_8(0.06258890), fixed32_8(0.01802070), fixed32_8(0.04914980), fixed32_8(0.07002050)}},
        {{fixed32_8(0.04878140), fixed32_8(0.08802360), fixed32_8(-0.04746460), fixed32_8(-0.04438860), fixed32_8(-0.00301107), fixed32_8(0.07889450), fixed32_8(-0.03944270), fixed32_8(0.04764970), fixed32_8(-0.05049260), fixed32_8(0.00969391), fixed32_8(-0.07391860), fixed32_8(0.04357130), fixed32_8(-0.04012660), fixed32_8(0.08659660), fixed32_8(-0.01676560), fixed32_8(0.05692300), fixed32_8(-0.00320806), fixed32_8(-0.02904020), fixed32_8(0.06732720), fixed32_8(0.03983010), fixed32_8(-0.05427330), fixed32_8(0.01823550), fixed32_8(-0.02136510), fixed32_8(0.08029610), fixed32_8(-0.07124800), fixed32_8(0.06494980), fixed32_8(-0.03348090), fixed32_8(-0.03560910), fixed32_8(-0.01085040), fixed32_8(-0.00467238), fixed32_8(0.03791560), fixed32_8(-0.04957020), fixed32_8(-0.02036290), fixed32_8(-0.00247906), fixed32_8(-0.06346300), fixed32_8(-0.07521330), fixed32_8(-0.01968250), fixed32_8(-0.04640380), fixed32_8(0.03503630), fixed32_8(0.01808360), fixed32_8(-0.08837100), fixed32_8(0.07883190), fixed32_8(-0.00024196), fixed32_8(0.03845280), fixed32_8(-0.00451558), fixed32_8(0.02841800), fixed32_8(-0.03915550), fixed32_8(0.00281510), fixed32_8(0.02387560), fixed32_8(0.06867810), fixed32_8(-0.07733130), fixed32_8(0.08588250), fixed32_8(-0.06966410), fixed32_8(-0.00147230), fixed32_8(-0.02551900), fixed32_8(0.07220350), fixed32_8(0.03072580), fixed32_8(0.07153910), fixed32_8(-0.06120220), fixed32_8(-0.04181940), fixed32_8(0.04450440), fixed32_8(-0.03853280), fixed32_8(0.04123550), fixed32_8(0.08413660)}},
        {{fixed32_8(0.05219390), fixed32_8(-0.05195360), fixed32_8(-0.05884920), fixed32_8(-0.06281880), fixed32_8(0.06347940), fixed32_8(-0.07571470), fixed32_8(0.00915386), fixed32_8(0.08323740), fixed32_8(0.00551906), fixed32_8(0.08687610), fixed32_8(0.03793600), fixed32_8(-0.07765290), fixed32_8(-0.04713210), fixed32_8(0.05114390), fixed32_8(-0.01990650), fixed32_8(0.01273330), fixed32_8(-0.02963910), fixed32_8(0.07558580), fixed32_8(-0.03509080), fixed32_8(-0.08062960), fixed32_8(-0.06838410), fixed32_8(0.04968500), fixed32_8(-0.04382810), fixed32_8(0.07050200), fixed32_8(-0.02719260), fixed32_8(0.05801600), fixed32_8(-0.01250700), fixed32_8(-0.00276474), fixed32_8(-0.06700790), fixed32_8(0.07250840), fixed32_8(0.04031110), fixed32_8(0.02869360), fixed32_8(-0.03159010), fixed32_8(-0.08441760), fixed32_8(0.01284320), fixed32_8(0.00420859), fixed32_8(-0.04367020), fixed32_8(-0.05266400), fixed32_8(-0.08750600), fixed32_8(-0.08076340), fixed32_8(-0.05059040), fixed32_8(0.08759280), fixed32_8(0.04151980), fixed32_8(-0.04156870), fixed32_8(0.00362185), fixed32_8(0.06191100), fixed32_8(0.05863000), fixed32_8(-0.08640860), fixed32_8(-0.00105765), fixed32_8(-0.00102321), fixed32_8(-0.05539900), fixed32_8(0.01124650), fixed32_8(-0.08172190), fixed32_8(0.05280870), fixed32_8(-0.06839220), fixed32_8(-0.04240850), fixed32_8(0.02741180), fixed32_8(-0.01982240), fixed32_8(0.00504093), fixed32_8(0.02699820), fixed32_8(0.06046380), fixed32_8(0.08402940), fixed32_8(-0.06006030), fixed32_8(0.03036610)}},
        {{fixed32_8(0.00920740), fixed32_8(-0.00756359), fixed32_8(0.07574590), fixed32_8(0.06002090), fixed32_8(0.01041500), fixed32_8(-0.03081850), fixed32_8(0.02408310), fixed32_8(0.08713630), fixed32_8(-0.07801830), fixed32_8(-0.04560750), fixed32_8(-0.06121110), fixed32_8(-0.04632820), fixed32_8(0.08242680), fixed32_8(0.04283430), fixed32_8(0.00421142), fixed32_8(-0.04057570), fixed32_8(0.01819850), fixed32_8(0.08781270), fixed32_8(0.02666130), fixed32_8(-0.00703459), fixed32_8(0.05560130), fixed32_8(-0.06306510), fixed32_8(-0.07178800), fixed32_8(0.00924045), fixed32_8(0.08789680), fixed32_8(-0.06563670), fixed32_8(-0.00150138), fixed32_8(-0.02164060), fixed32_8(0.06562400), fixed32_8(-0.08160480), fixed32_8(0.02867630), fixed32_8(0.08332630), fixed32_8(-0.08240520), fixed32_8(-0.07460380), fixed32_8(-0.04296040), fixed32_8(-0.00912224), fixed32_8(0.08748730), fixed32_8(0.01354180), fixed32_8(-0.04872330), fixed32_8(0.06054970), fixed32_8(-0.02464840), fixed32_8(0.04794330), fixed32_8(-0.01251820), fixed32_8(0.02346860), fixed32_8(0.04650520), fixed32_8(0.07868210), fixed32_8(-0.05346070), fixed32_8(-0.06998010), fixed32_8(-0.01974610), fixed32_8(0.06865890), fixed32_8(0.06145590), fixed32_8(0.06667050), fixed32_8(-0.01279150), fixed32_8(0.04294450), fixed32_8(-0.01704870), fixed32_8(0.02699720), fixed32_8(0.07992780), fixed32_8(-0.02069040), fixed32_8(0.08739640), fixed32_8(-0.03797130), fixed32_8(0.03080290), fixed32_8(0.04802660), fixed32_8(0.00384512), fixed32_8(0.01628430)}}}};
    
    std::array<std::array<fixed32_8, L1_SIZE>, L2_SIZE> weights_l2 = {{
        {{fixed32_8(-0.07328250), fixed32_8(0.04821540), fixed32_8(0.04971100), fixed32_8(0.00230481), fixed32_8(0.00667868), fixed32_8(0.01688510), fixed32_8(0.01381770), fixed32_8(0.00029640)}},
        {{fixed32_8(-0.03334960), fixed32_8(0.06645590), fixed32_8(-0.04822220), fixed32_8(-0.07223280), fixed32_8(0.02871450), fixed32_8(-0.01704510), fixed32_8(0.02897540), fixed32_8(-0.07155170)}},
        {{fixed32_8(0.06319260), fixed32_8(0.07138240), fixed32_8(-0.08632020), fixed32_8(-0.06489960), fixed32_8(-0.07200050), fixed32_8(0.04147540), fixed32_8(-0.06440970), fixed32_8(0.06281500)}},
        {{fixed32_8(-0.07245100), fixed32_8(-0.07329890), fixed32_8(0.05783900), fixed32_8(0.04670460), fixed32_8(0.07701380), fixed32_8(-0.04123590), fixed32_8(0.03212030), fixed32_8(-0.03174260)}},
        // {{fixed32_8(0.06177200), fixed32_8(0.06813050), fixed32_8(0.05302280), fixed32_8(0.06160160), fixed32_8(-0.01066200), fixed32_8(0.06311610), fixed32_8(-0.04395860), fixed32_8(-0.06036330)}},
        // {{fixed32_8(-0.07453100), fixed32_8(0.03017360), fixed32_8(-0.05119010), fixed32_8(-0.01563070), fixed32_8(0.05378330), fixed32_8(0.05842900), fixed32_8(-0.03061910), fixed32_8(0.05070080)}},
        // {{fixed32_8(0.00963548), fixed32_8(-0.05695050), fixed32_8(-0.00364942), fixed32_8(0.04043990), fixed32_8(0.08313030), fixed32_8(0.03993560), fixed32_8(-0.04549990), fixed32_8(-0.03886800)}},
        // {{fixed32_8(0.02375670), fixed32_8(0.07858420), fixed32_8(0.02548590), fixed32_8(-0.05553820), fixed32_8(0.00890676), fixed32_8(0.02389030), fixed32_8(0.01213800), fixed32_8(0.02778540)}}
    }};

    std::array<std::array<fixed32_8, L2_SIZE>, OUT_SIZE> weights_l3 = {{
        {{fixed32_8(0.08141530), fixed32_8(-0.01283450), fixed32_8(-0.00735669), fixed32_8(-0.07736680)}},// fixed32_8(0.02892770), fixed32_8(0.04038040)}}, //fixed32_8(-0.05241880), fixed32_8(0.01308330)}},
        {{fixed32_8(0.01917110), fixed32_8(-0.00453355), fixed32_8(-0.05589500), fixed32_8(0.00616857)}},// fixed32_8(0.06161180), fixed32_8(-0.01291280)}},// fixed32_8(0.05313930), fixed32_8(-0.07965430)}},
        {{fixed32_8(-0.04304770), fixed32_8(-0.08628540), fixed32_8(-0.08375460), fixed32_8(0.07776850)}},// fixed32_8(-0.01267310), fixed32_8(-0.00842015)}},// fixed32_8(-0.03428370), fixed32_8(-0.02044820)}},
        {{fixed32_8(-0.05758140), fixed32_8(0.07632680), fixed32_8(0.02418380), fixed32_8(0.03848230)}},// fixed32_8(-0.02691050), fixed32_8(-0.07149850)}},// fixed32_8(0.04802820), fixed32_8(0.03410770)}},
        {{fixed32_8(0.03520520), fixed32_8(-0.07503940), fixed32_8(0.08551920), fixed32_8(-0.03531320)}},// fixed32_8(0.02218800), fixed32_8(0.05723820)}},// fixed32_8(-0.07719730), fixed32_8(0.05966140)}},
        {{fixed32_8(0.04280280), fixed32_8(0.04858650), fixed32_8(0.04292800), fixed32_8(0.00605530)}},// fixed32_8(-0.00754466), fixed32_8(-0.02347210)}},// fixed32_8(-0.05419480), fixed32_8(-0.06769680)}},
        {{fixed32_8(0.06828310), fixed32_8(-0.03141280), fixed32_8(0.01395950), fixed32_8(0.06920880)}},// fixed32_8(0.04973400), fixed32_8(-0.07419060)}},// fixed32_8(0.06504860), fixed32_8(0.08151840)}},
        {{fixed32_8(-0.04037860), fixed32_8(0.06623610), fixed32_8(-0.02966110), fixed32_8(0.00110690)}},// fixed32_8(-0.03591400), fixed32_8(0.02122440)}},// fixed32_8(-0.01142930), fixed32_8(0.06194300)}},
        {{fixed32_8(-0.02262320), fixed32_8(-0.00168517), fixed32_8(-0.02349060), fixed32_8(0.02275130)}},// fixed32_8(-0.04365450), fixed32_8(-0.03913790)}},// fixed32_8(0.05905560), fixed32_8(0.00099953)}},
        {{fixed32_8(0.06939590), fixed32_8(0.06209740), fixed32_8(-0.03377110), fixed32_8(-0.01605630)}},// fixed32_8(-0.03047000), fixed32_8(0.05707690)}},// fixed32_8(0.01036230), fixed32_8(-0.01221750)}}
    }};


    // std::array<fixed32_8, L1_SIZE> biases_l0;
    std::array<fixed32_8, L1_SIZE> biases_l1;
    std::array<fixed32_8, L2_SIZE> biases_l2;
    std::array<fixed32_8, OUT_SIZE> biases_l3;
    
    // biases_l0.fill(fixed32_8(0.0));  // Good for ReLU
    biases_l1.fill(fixed32_8(0.0));
    biases_l2.fill(fixed32_8(0.0));
    biases_l3.fill(fixed32_8(0.0));

    accelerator<TRAIN_SIZE>(input_train, y_train, weights_l1, weights_l2, weights_l3, biases_l1, biases_l2, biases_l3, train_accuracy, 0);

    // cout << "Train accuracy: " << train_accuracy << endl;

    accelerator<TEST_SIZE>(input_test, y_test, weights_l1, weights_l2, weights_l3, biases_l1, biases_l2, biases_l3, test_accuracy, 1);

    // cout << "Train accuracy: " << train_accuracy << endl;

    done = 1;
}

