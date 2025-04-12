-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity top_digits_features_2_1_0_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 4; 
             AddressWidth     : integer := 11; 
             AddressRange    : integer := 1797
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of top_digits_features_2_1_0_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0000", 1 => "0000", 2 => "0000", 3 => "0000", 
    4 => "0000", 5 => "0000", 6 => "0000", 7 => "0000", 
    8 => "0000", 9 => "0000", 10 => "0000", 11 => "0000", 
    12 => "0000", 13 => "0000", 14 => "0000", 15 => "0000", 
    16 => "0000", 17 => "0000", 18 => "0000", 19 => "0000", 
    20 => "0000", 21 => "0000", 22 => "0000", 23 => "0000", 
    24 => "0000", 25 => "0000", 26 => "0000", 27 => "0000", 
    28 => "0000", 29 => "0000", 30 => "0000", 31 => "0000", 
    32 => "0000", 33 => "0000", 34 => "0000", 35 => "0000", 
    36 => "0000", 37 => "0000", 38 => "0000", 39 => "0000", 
    40 => "0000", 41 => "0000", 42 => "0000", 43 => "0000", 
    44 => "0000", 45 => "0000", 46 => "0000", 47 => "0000", 
    48 => "0000", 49 => "0000", 50 => "0000", 51 => "0000", 
    52 => "0000", 53 => "0000", 54 => "0000", 55 => "0000", 
    56 => "0000", 57 => "0000", 58 => "0000", 59 => "0000", 
    60 => "0000", 61 => "0000", 62 => "0000", 63 => "0000", 
    64 => "0000", 65 => "0000", 66 => "0000", 67 => "0000", 
    68 => "0000", 69 => "0000", 70 => "0000", 71 => "0000", 
    72 => "0000", 73 => "0000", 74 => "0000", 75 => "0000", 
    76 => "0000", 77 => "0000", 78 => "0000", 79 => "0000", 
    80 => "0000", 81 => "0000", 82 => "0000", 83 => "0000", 
    84 => "0000", 85 => "0000", 86 => "0000", 87 => "0000", 
    88 => "0000", 89 => "0000", 90 => "0000", 91 => "0000", 
    92 => "0000", 93 => "0000", 94 => "0000", 95 => "0000", 
    96 => "0000", 97 => "0000", 98 => "0000", 99 => "0000", 
    100 => "0000", 101 => "0000", 102 => "0000", 103 => "0000", 
    104 => "0000", 105 => "0000", 106 => "0000", 107 => "0000", 
    108 => "0000", 109 => "0000", 110 => "0000", 111 => "0000", 
    112 => "0000", 113 => "0000", 114 => "0000", 115 => "0000", 
    116 => "0000", 117 => "0000", 118 => "0000", 119 => "0000", 
    120 => "0000", 121 => "0000", 122 => "0000", 123 => "0000", 
    124 => "0000", 125 => "0000", 126 => "0000", 127 => "0000", 
    128 => "0000", 129 => "0000", 130 => "0000", 131 => "0000", 
    132 => "0000", 133 => "0000", 134 => "0000", 135 => "0000", 
    136 => "0000", 137 => "0000", 138 => "0000", 139 => "0000", 
    140 => "0000", 141 => "0000", 142 => "0000", 143 => "0000", 
    144 => "0000", 145 => "0000", 146 => "0000", 147 => "0000", 
    148 => "0000", 149 => "0000", 150 => "0000", 151 => "0000", 
    152 => "0000", 153 => "0000", 154 => "0000", 155 => "0000", 
    156 => "0000", 157 => "0000", 158 => "0000", 159 => "0000", 
    160 => "0000", 161 => "0000", 162 => "0000", 163 => "0000", 
    164 => "0000", 165 => "0000", 166 => "0000", 167 => "0000", 
    168 => "0000", 169 => "0000", 170 => "0000", 171 => "0000", 
    172 => "0000", 173 => "0000", 174 => "0000", 175 => "0000", 
    176 => "0000", 177 => "0000", 178 => "0000", 179 => "0000", 
    180 => "0000", 181 => "0000", 182 => "0000", 183 => "0000", 
    184 => "0000", 185 => "0000", 186 => "0000", 187 => "0000", 
    188 => "0000", 189 => "0000", 190 => "0000", 191 => "0000", 
    192 => "0000", 193 => "0000", 194 => "0000", 195 => "0000", 
    196 => "0000", 197 => "0000", 198 => "0000", 199 => "0000", 
    200 => "0000", 201 => "0000", 202 => "0000", 203 => "0000", 
    204 => "0000", 205 => "0000", 206 => "0000", 207 => "0000", 
    208 => "0000", 209 => "0000", 210 => "0000", 211 => "0000", 
    212 => "0000", 213 => "0000", 214 => "0000", 215 => "0000", 
    216 => "0000", 217 => "0000", 218 => "0000", 219 => "0000", 
    220 => "0000", 221 => "0000", 222 => "0000", 223 => "0000", 
    224 => "0000", 225 => "0000", 226 => "0000", 227 => "0000", 
    228 => "0000", 229 => "0000", 230 => "0000", 231 => "0000", 
    232 => "0000", 233 => "0000", 234 => "0000", 235 => "0000", 
    236 => "0000", 237 => "0000", 238 => "0000", 239 => "0000", 
    240 => "0000", 241 => "0000", 242 => "0000", 243 => "0000", 
    244 => "0000", 245 => "0000", 246 => "0000", 247 => "0000", 
    248 => "0000", 249 => "0000", 250 => "0000", 251 => "0000", 
    252 => "0000", 253 => "0000", 254 => "0000", 255 => "0000", 
    256 => "0000", 257 => "0000", 258 => "0000", 259 => "0000", 
    260 => "0000", 261 => "0000", 262 => "0000", 263 => "0011", 
    264 => "0000", 265 => "0000", 266 => "0000", 267 => "0000", 
    268 => "0000", 269 => "0000", 270 => "0000", 271 => "0010", 
    272 => "0000", 273 => "0000", 274 => "0000", 275 => "0000", 
    276 => "0000", 277 => "0000", 278 => "0000", 279 => "0000", 
    280 => "0000", 281 => "0000", 282 => "0000", 283 => "0101", 
    284 => "0000", 285 => "0000", 286 => "0000", 287 => "0000", 
    288 => "0000", 289 => "0000", 290 => "0000", 291 => "0000", 
    292 => "0000", 293 => "0000", 294 => "0000", 295 => "0000", 
    296 => "0000", 297 => "0000", 298 => "0000", 299 => "0000", 
    300 => "0000", 301 => "0000", 302 => "0000", 303 => "0000", 
    304 => "0000", 305 => "0000", 306 => "0000", 307 => "0000", 
    308 => "0000", 309 => "0000", 310 => "0000", 311 => "0000", 
    312 => "0000", 313 => "0000", 314 => "0000", 315 => "0000", 
    316 => "0000", 317 => "1000", 318 => "0000", 319 => "0000", 
    320 => "0000", 321 => "0000", 322 => "0000", 323 => "0000", 
    324 => "0000", 325 => "0000", 326 => "0000", 327 => "0000", 
    328 => "0000", 329 => "0000", 330 => "0000", 331 => "0000", 
    332 => "0000", 333 => "0000", 334 => "0000", 335 => "0000", 
    336 => "0000", 337 => "0000", 338 => "0000", 339 => "0000", 
    340 => "0000", 341 => "0000", 342 => "0000", 343 => "0000", 
    344 => "0000", 345 => "0000", 346 => "0000", 347 => "0000", 
    348 => "0000", 349 => "0000", 350 => "0000", 351 => "0000", 
    352 => "0000", 353 => "0000", 354 => "0000", 355 => "0000", 
    356 => "0000", 357 => "0000", 358 => "0000", 359 => "0000", 
    360 => "0000", 361 => "0000", 362 => "0000", 363 => "0000", 
    364 => "0000", 365 => "0000", 366 => "0000", 367 => "0000", 
    368 => "0000", 369 => "0000", 370 => "0000", 371 => "0000", 
    372 => "0000", 373 => "0000", 374 => "0000", 375 => "0000", 
    376 => "0000", 377 => "0000", 378 => "0000", 379 => "0000", 
    380 => "0000", 381 => "0000", 382 => "0000", 383 => "0000", 
    384 => "0000", 385 => "0000", 386 => "0000", 387 => "0000", 
    388 => "0000", 389 => "0000", 390 => "0000", 391 => "0000", 
    392 => "0000", 393 => "0101", 394 => "0000", 395 => "0000", 
    396 => "0000", 397 => "0000", 398 => "0000", 399 => "0000", 
    400 => "0000", 401 => "0000", 402 => "0000", 403 => "0101", 
    404 => "0000", 405 => "0000", 406 => "0000", 407 => "0000", 
    408 => "0000", 409 => "0000", 410 => "0000", 411 => "0000", 
    412 => "0000", 413 => "0110", 414 => "0000", 415 => "0000", 
    416 => "0000", 417 => "0000", 418 => "0000", 419 => "0000", 
    420 => "0000", 421 => "0000", 422 => "0000", 423 => "0000", 
    424 => "0000", 425 => "0000", 426 => "0000", 427 => "0000", 
    428 => "0000", 429 => "0101", 430 => "0011", 431 => "0000", 
    432 => "0000", 433 => "0000", 434 => "0000", 435 => "0000", 
    436 => "0000", 437 => "0000", 438 => "0101", 439 => "0000", 
    440 => "0000", 441 => "0000", 442 => "0000", 443 => "0000", 
    444 => "0000", 445 => "0000", 446 => "0000", 447 => "1001", 
    448 => "0000", 449 => "0000", 450 => "0000", 451 => "0000", 
    452 => "0000", 453 => "0000", 454 => "0000", 455 => "0000", 
    456 => "0000", 457 => "0001", 458 => "0000", 459 => "0000", 
    460 => "0000", 461 => "0000", 462 => "0000", 463 => "0000", 
    464 => "0000", 465 => "0000", 466 => "0000", 467 => "0110", 
    468 => "0000", 469 => "0000", 470 => "0000", 471 => "0000", 
    472 => "0001", 473 => "0000", 474 => "0000", 475 => "0000", 
    476 => "0000", 477 => "0000", 478 => "0000", 479 => "0000", 
    480 => "0000", 481 => "0000", 482 => "0000", 483 => "0000", 
    484 => "0000", 485 => "0000", 486 => "0000", 487 => "0000", 
    488 => "0000", 489 => "0000", 490 => "0000", 491 => "0000", 
    492 => "0000", 493 => "0000", 494 => "0111", 495 => "0000", 
    496 => "0000", 497 => "0000", 498 => "0011", 499 => "0000", 
    500 => "0000", 501 => "0000", 502 => "0000", 503 => "0000", 
    504 => "0001", 505 => "0000", 506 => "0000", 507 => "0000", 
    508 => "0000", 509 => "0000", 510 => "0000", 511 => "0000", 
    512 => "0000", 513 => "0000", 514 => "0000", 515 => "0000", 
    516 => "0000", 517 => "0000", 518 => "0000", 519 => "0000", 
    520 => "0000", 521 => "0000", 522 => "0000", 523 => "0000", 
    524 => "0000", 525 => "0000", 526 => "0000", 527 => "0000", 
    528 => "0000", 529 => "0000", 530 => "0000", 531 => "0000", 
    532 => "0000", 533 => "0000", 534 => "0000", 535 => "0000", 
    536 => "0000", 537 => "0000", 538 => "0000", 539 => "0000", 
    540 => "0000", 541 => "0000", 542 => "0000", 543 => "0000", 
    544 => "0000", 545 => "0000", 546 => "0000", 547 => "0000", 
    548 => "0000", 549 => "0000", 550 => "0000", 551 => "0000", 
    552 => "0000", 553 => "0000", 554 => "0000", 555 => "0000", 
    556 => "0000", 557 => "0000", 558 => "0000", 559 => "0000", 
    560 => "0000", 561 => "0000", 562 => "0000", 563 => "0000", 
    564 => "0000", 565 => "0000", 566 => "0000", 567 => "0000", 
    568 => "0000", 569 => "0000", 570 => "0000", 571 => "0000", 
    572 => "0000", 573 => "0000", 574 => "0000", 575 => "0000", 
    576 => "0000", 577 => "0000", 578 => "0000", 579 => "0000", 
    580 => "0000", 581 => "0000", 582 => "0000", 583 => "0000", 
    584 => "0000", 585 => "0000", 586 => "0000", 587 => "0000", 
    588 => "0000", 589 => "0000", 590 => "0000", 591 => "0000", 
    592 => "0000", 593 => "0000", 594 => "0000", 595 => "0000", 
    596 => "0000", 597 => "0000", 598 => "0000", 599 => "0000", 
    600 => "0000", 601 => "0000", 602 => "0000", 603 => "0000", 
    604 => "0000", 605 => "0000", 606 => "0000", 607 => "0000", 
    608 => "0000", 609 => "0000", 610 => "0000", 611 => "0000", 
    612 => "0000", 613 => "0000", 614 => "0000", 615 => "0000", 
    616 => "0000", 617 => "0000", 618 => "0000", 619 => "0000", 
    620 => "0000", 621 => "0000", 622 => "0000", 623 => "0000", 
    624 => "0000", 625 => "0000", 626 => "0000", 627 => "0000", 
    628 => "0000", 629 => "0000", 630 => "0000", 631 => "0000", 
    632 => "0000", 633 => "0000", 634 => "0000", 635 => "0000", 
    636 => "0000", 637 => "0000", 638 => "0000", 639 => "0000", 
    640 => "0000", 641 => "0000", 642 => "0000", 643 => "0000", 
    644 => "0000", 645 => "0000", 646 => "0000", 647 => "0000", 
    648 => "0000", 649 => "0000", 650 => "0000", 651 => "0000", 
    652 => "0000", 653 => "0000", 654 => "0000", 655 => "0011", 
    656 => "0000", 657 => "0000", 658 => "0000", 659 => "0000", 
    660 => "0000", 661 => "0000", 662 => "0000", 663 => "0001", 
    664 => "0000", 665 => "0000", 666 => "0000", 667 => "0000", 
    668 => "0000", 669 => "0000", 670 => "0000", 671 => "0000", 
    672 => "0000", 673 => "1100", 674 => "0000", 675 => "0000", 
    676 => "0000", 677 => "0000", 678 => "0000", 679 => "0000", 
    680 => "0000", 681 => "0000", 682 => "0000", 683 => "0000", 
    684 => "0000", 685 => "0000", 686 => "0000", 687 => "0000", 
    688 => "0000", 689 => "0110", 690 => "0001", 691 => "0000", 
    692 => "0000", 693 => "0000", 694 => "0000", 695 => "0000", 
    696 => "0000", 697 => "0000", 698 => "0000", 699 => "0000", 
    700 => "0000", 701 => "0000", 702 => "0000", 703 => "0000", 
    704 => "0000", 705 => "0000", 706 => "0000", 707 => "0000", 
    708 => "0000", 709 => "0000", 710 => "0000", 711 => "0000", 
    712 => "0000", 713 => "0000", 714 => "0000", 715 => "0000", 
    716 => "0000", 717 => "0000", 718 => "0000", 719 => "0000", 
    720 => "0000", 721 => "0000", 722 => "0000", 723 => "0000", 
    724 => "0000", 725 => "0000", 726 => "0000", 727 => "0000", 
    728 => "0000", 729 => "0000", 730 => "0000", 731 => "0000", 
    732 => "1010", 733 => "0000", 734 => "0000", 735 => "0000", 
    736 => "0000", 737 => "0000", 738 => "0000", 739 => "0000", 
    740 => "0000", 741 => "0000", 742 => "0000", 743 => "0000", 
    744 => "0000", 745 => "0000", 746 => "0000", 747 => "0000", 
    748 => "0000", 749 => "0000", 750 => "0000", 751 => "0010", 
    752 => "0000", 753 => "0000", 754 => "0000", 755 => "0000", 
    756 => "0000", 757 => "0001", 758 => "0000", 759 => "0000", 
    760 => "0000", 761 => "0000", 762 => "0000", 763 => "0000", 
    764 => "0000", 765 => "0100", 766 => "0000", 767 => "0001", 
    768 => "0000", 769 => "0000", 770 => "0000", 771 => "0001", 
    772 => "0000", 773 => "0000", 774 => "0000", 775 => "0000", 
    776 => "0000", 777 => "0000", 778 => "0000", 779 => "0000", 
    780 => "0000", 781 => "0000", 782 => "0000", 783 => "0000", 
    784 => "0000", 785 => "0000", 786 => "0000", 787 => "0000", 
    788 => "0000", 789 => "0000", 790 => "0000", 791 => "0000", 
    792 => "0000", 793 => "0000", 794 => "0000", 795 => "0000", 
    796 => "0000", 797 => "0000", 798 => "0000", 799 => "0000", 
    800 => "0000", 801 => "0000", 802 => "0000", 803 => "0000", 
    804 => "0000", 805 => "0000", 806 => "0000", 807 => "0000", 
    808 => "0010", 809 => "0000", 810 => "0000", 811 => "0000", 
    812 => "0000", 813 => "0000", 814 => "0000", 815 => "0000", 
    816 => "0000", 817 => "0000", 818 => "0000", 819 => "0000", 
    820 => "0000", 821 => "0000", 822 => "0000", 823 => "0000", 
    824 => "0000", 825 => "0000", 826 => "0000", 827 => "0000", 
    828 => "0000", 829 => "0000", 830 => "0000", 831 => "0000", 
    832 => "0000", 833 => "0000", 834 => "0000", 835 => "0000", 
    836 => "0000", 837 => "0000", 838 => "0010", 839 => "0000", 
    840 => "0000", 841 => "0000", 842 => "0000", 843 => "0000", 
    844 => "0000", 845 => "0000", 846 => "0000", 847 => "0000", 
    848 => "0000", 849 => "0000", 850 => "0000", 851 => "0000", 
    852 => "0000", 853 => "0000", 854 => "0000", 855 => "0000", 
    856 => "0000", 857 => "0000", 858 => "0000", 859 => "0000", 
    860 => "0000", 861 => "0000", 862 => "0000", 863 => "0000", 
    864 => "0000", 865 => "0000", 866 => "0000", 867 => "0000", 
    868 => "0000", 869 => "0000", 870 => "0000", 871 => "0000", 
    872 => "0000", 873 => "0000", 874 => "0000", 875 => "0000", 
    876 => "0000", 877 => "0000", 878 => "0001", 879 => "0000", 
    880 => "0000", 881 => "0000", 882 => "0000", 883 => "0000", 
    884 => "0000", 885 => "0000", 886 => "0000", 887 => "0000", 
    888 => "0000", 889 => "0000", 890 => "0000", 891 => "0000", 
    892 => "0000", 893 => "0000", 894 => "0000", 895 => "0000", 
    896 => "0000", 897 => "0000", 898 => "0000", 899 => "0000", 
    900 => "0000", 901 => "0000", 902 => "0000", 903 => "0000", 
    904 => "0000", 905 => "0000", 906 => "0000", 907 => "0000", 
    908 => "0000", 909 => "0000", 910 => "0000", 911 => "0000", 
    912 => "0001", 913 => "0000", 914 => "0000", 915 => "0000", 
    916 => "0000", 917 => "0000", 918 => "0000", 919 => "0000", 
    920 => "0000", 921 => "0000", 922 => "0000", 923 => "0000", 
    924 => "0000", 925 => "0000", 926 => "0000", 927 => "0000", 
    928 => "0000", 929 => "0000", 930 => "0000", 931 => "0000", 
    932 => "0000", 933 => "0000", 934 => "0000", 935 => "0000", 
    936 => "0000", 937 => "0000", 938 => "0000", 939 => "0000", 
    940 => "0000", 941 => "0000", 942 => "0000", 943 => "0000", 
    944 => "0000", 945 => "0000", 946 => "0001", 947 => "0000", 
    948 => "0000", 949 => "0000", 950 => "0000", 951 => "0000", 
    952 => "0000", 953 => "0000", 954 => "0000", 955 => "0000", 
    956 => "0000", 957 => "0000", 958 => "0000", 959 => "0000", 
    960 => "0000", 961 => "0000", 962 => "0000", 963 => "0000", 
    964 => "0000", 965 => "0000", 966 => "0000", 967 => "0000", 
    968 => "0000", 969 => "0000", 970 => "0000", 971 => "0000", 
    972 => "0000", 973 => "0000", 974 => "0000", 975 => "0000", 
    976 => "0000", 977 => "0000", 978 => "0000", 979 => "0000", 
    980 => "0000", 981 => "0000", 982 => "0000", 983 => "0000", 
    984 => "0000", 985 => "0000", 986 => "0000", 987 => "0000", 
    988 => "0000", 989 => "0000", 990 => "0000", 991 => "0000", 
    992 => "0000", 993 => "0000", 994 => "0000", 995 => "0000", 
    996 => "0000", 997 => "0000", 998 => "0111", 999 => "0000", 
    1000 => "0000", 1001 => "0000", 1002 => "0000", 1003 => "0000", 
    1004 => "0000", 1005 => "0000", 1006 => "0000", 1007 => "0000", 
    1008 => "0000", 1009 => "0010", 1010 => "0000", 1011 => "0000", 
    1012 => "0001", 1013 => "0000", 1014 => "0000", 1015 => "0000", 
    1016 => "0000", 1017 => "0000", 1018 => "0000", 1019 => "0000", 
    1020 => "0000", 1021 => "0000", 1022 => "1001", 1023 => "0101", 
    1024 => "0000", 1025 => "0000", 1026 => "0000", 1027 => "0000", 
    1028 => "0000", 1029 => "0000", 1030 => "0000", 1031 => "0000", 
    1032 => "0000", 1033 => "0011", 1034 => "0000", 1035 => "0000", 
    1036 => "0000", 1037 => "0000", 1038 => "0000", 1039 => "0000", 
    1040 => "0000", 1041 => "0000", 1042 => "0000", 1043 => "0110", 
    1044 => "0000", 1045 => "0000", 1046 => "0000", 1047 => "0000", 
    1048 => "0000", 1049 => "0000", 1050 => "0000", 1051 => "0000", 
    1052 => "0000", 1053 => "0000", 1054 => "0000", 1055 => "0000", 
    1056 => "0000", 1057 => "0000", 1058 => "0000", 1059 => "0000", 
    1060 => "0000", 1061 => "0000", 1062 => "0000", 1063 => "0000", 
    1064 => "0000", 1065 => "0000", 1066 => "0000", 1067 => "0000", 
    1068 => "0000", 1069 => "0000", 1070 => "1011", 1071 => "0000", 
    1072 => "0000", 1073 => "0000", 1074 => "0000", 1075 => "0000", 
    1076 => "0000", 1077 => "0000", 1078 => "0000", 1079 => "0000", 
    1080 => "0000", 1081 => "0000", 1082 => "0000", 1083 => "0000", 
    1084 => "0000", 1085 => "0000", 1086 => "0000", 1087 => "0000", 
    1088 => "0000", 1089 => "0000", 1090 => "0000", 1091 => "0000", 
    1092 => "0000", 1093 => "0000", 1094 => "0000", 1095 => "0000", 
    1096 => "0000", 1097 => "0000", 1098 => "0000", 1099 => "0000", 
    1100 => "0000", 1101 => "0000", 1102 => "0000", 1103 => "0000", 
    1104 => "0000", 1105 => "0000", 1106 => "0000", 1107 => "0000", 
    1108 => "0000", 1109 => "0000", 1110 => "0000", 1111 => "0000", 
    1112 => "0000", 1113 => "0001", 1114 => "0000", 1115 => "0000", 
    1116 => "0000", 1117 => "0000", 1118 => "0000", 1119 => "0000", 
    1120 => "0000", 1121 => "0000", 1122 => "0000", 1123 => "0000", 
    1124 => "0000", 1125 => "0000", 1126 => "0000", 1127 => "0000", 
    1128 => "0000", 1129 => "0000", 1130 => "0000", 1131 => "0000", 
    1132 => "0000", 1133 => "0000", 1134 => "0000", 1135 => "0000", 
    1136 => "0000", 1137 => "0000", 1138 => "0001", 1139 => "0000", 
    1140 => "0000", 1141 => "0000", 1142 => "0000", 1143 => "0000", 
    1144 => "0000", 1145 => "0001", 1146 => "0000", 1147 => "0000", 
    1148 => "0000", 1149 => "0000", 1150 => "0000", 1151 => "0000", 
    1152 => "0000", 1153 => "0000", 1154 => "0000", 1155 => "0000", 
    1156 => "0000", 1157 => "0000", 1158 => "0000", 1159 => "0000", 
    1160 => "0000", 1161 => "0000", 1162 => "0000", 1163 => "0000", 
    1164 => "0000", 1165 => "0000", 1166 => "0000", 1167 => "0000", 
    1168 => "0000", 1169 => "0000", 1170 => "0000", 1171 => "0000", 
    1172 => "0000", 1173 => "0000", 1174 => "0000", 1175 => "0000", 
    1176 => "0000", 1177 => "0000", 1178 => "0000", 1179 => "0000", 
    1180 => "0000", 1181 => "0000", 1182 => "0000", 1183 => "0000", 
    1184 => "0000", 1185 => "0000", 1186 => "0000", 1187 => "0000", 
    1188 => "0000", 1189 => "0000", 1190 => "0000", 1191 => "0000", 
    1192 => "0000", 1193 => "0000", 1194 => "0000", 1195 => "0000", 
    1196 => "0000", 1197 => "0000", 1198 => "0000", 1199 => "0000", 
    1200 => "0000", 1201 => "0000", 1202 => "0000", 1203 => "0000", 
    1204 => "0000", 1205 => "0000", 1206 => "0000", 1207 => "0000", 
    1208 => "0000", 1209 => "0000", 1210 => "0000", 1211 => "0000", 
    1212 => "0000", 1213 => "0000", 1214 => "0000", 1215 => "0000", 
    1216 => "0000", 1217 => "0000", 1218 => "0000", 1219 => "0000", 
    1220 => "0000", 1221 => "0000", 1222 => "0000", 1223 => "0000", 
    1224 => "0000", 1225 => "0000", 1226 => "0000", 1227 => "0000", 
    1228 => "0000", 1229 => "0000", 1230 => "0000", 1231 => "0000", 
    1232 => "0000", 1233 => "0000", 1234 => "0000", 1235 => "0000", 
    1236 => "0000", 1237 => "0000", 1238 => "0000", 1239 => "0000", 
    1240 => "0000", 1241 => "0000", 1242 => "0000", 1243 => "0000", 
    1244 => "0000", 1245 => "0000", 1246 => "0000", 1247 => "0000", 
    1248 => "0000", 1249 => "0000", 1250 => "0000", 1251 => "0000", 
    1252 => "0000", 1253 => "0000", 1254 => "0000", 1255 => "0000", 
    1256 => "0000", 1257 => "0000", 1258 => "0000", 1259 => "0000", 
    1260 => "0000", 1261 => "0000", 1262 => "0000", 1263 => "0000", 
    1264 => "0000", 1265 => "0000", 1266 => "0000", 1267 => "0000", 
    1268 => "0000", 1269 => "0000", 1270 => "0000", 1271 => "0000", 
    1272 => "0000", 1273 => "0000", 1274 => "0000", 1275 => "0000", 
    1276 => "0000", 1277 => "0000", 1278 => "0000", 1279 => "0000", 
    1280 => "0000", 1281 => "0000", 1282 => "0000", 1283 => "0000", 
    1284 => "0000", 1285 => "0000", 1286 => "0000", 1287 => "0000", 
    1288 => "0000", 1289 => "0000", 1290 => "0000", 1291 => "0000", 
    1292 => "0000", 1293 => "0000", 1294 => "0000", 1295 => "0000", 
    1296 => "0000", 1297 => "0000", 1298 => "0000", 1299 => "0000", 
    1300 => "0000", 1301 => "0000", 1302 => "0000", 1303 => "0000", 
    1304 => "0000", 1305 => "0000", 1306 => "0000", 1307 => "0000", 
    1308 => "0000", 1309 => "0000", 1310 => "0000", 1311 => "0000", 
    1312 => "0000", 1313 => "0000", 1314 => "0000", 1315 => "0000", 
    1316 => "0000", 1317 => "0000", 1318 => "0000", 1319 => "0000", 
    1320 => "0000", 1321 => "0000", 1322 => "0000", 1323 => "0000", 
    1324 => "0000", 1325 => "0000", 1326 => "0000", 1327 => "0000", 
    1328 => "0000", 1329 => "0000", 1330 => "0000", 1331 => "0000", 
    1332 => "0000", 1333 => "0000", 1334 => "0000", 1335 => "0000", 
    1336 => "0000", 1337 => "0000", 1338 => "0000", 1339 => "0000", 
    1340 => "0000", 1341 => "0000", 1342 => "0000", 1343 => "0000", 
    1344 => "0000", 1345 => "0000", 1346 => "0000", 1347 => "0000", 
    1348 => "0000", 1349 => "0000", 1350 => "0000", 1351 => "0000", 
    1352 => "0000", 1353 => "0000", 1354 => "0000", 1355 => "0000", 
    1356 => "0000", 1357 => "0000", 1358 => "0000", 1359 => "0000", 
    1360 => "0000", 1361 => "0000", 1362 => "0000", 1363 => "0000", 
    1364 => "0000", 1365 => "0000", 1366 => "0000", 1367 => "0000", 
    1368 => "0000", 1369 => "0000", 1370 => "0000", 1371 => "0000", 
    1372 => "0000", 1373 => "0000", 1374 => "0000", 1375 => "0000", 
    1376 => "0000", 1377 => "0000", 1378 => "0000", 1379 => "0000", 
    1380 => "0000", 1381 => "0000", 1382 => "0000", 1383 => "0000", 
    1384 => "0000", 1385 => "0000", 1386 => "0000", 1387 => "0000", 
    1388 => "0000", 1389 => "0000", 1390 => "0000", 1391 => "0000", 
    1392 => "0000", 1393 => "0000", 1394 => "0000", 1395 => "0000", 
    1396 => "0000", 1397 => "0000", 1398 => "0000", 1399 => "0000", 
    1400 => "0000", 1401 => "0000", 1402 => "0000", 1403 => "0000", 
    1404 => "0000", 1405 => "0000", 1406 => "0000", 1407 => "0000", 
    1408 => "0000", 1409 => "0000", 1410 => "0000", 1411 => "0000", 
    1412 => "0000", 1413 => "0000", 1414 => "0000", 1415 => "0000", 
    1416 => "0000", 1417 => "0000", 1418 => "0000", 1419 => "0000", 
    1420 => "0000", 1421 => "0000", 1422 => "0000", 1423 => "0000", 
    1424 => "0000", 1425 => "0000", 1426 => "0000", 1427 => "0000", 
    1428 => "0000", 1429 => "0000", 1430 => "0000", 1431 => "0000", 
    1432 => "0000", 1433 => "0000", 1434 => "0000", 1435 => "0000", 
    1436 => "0000", 1437 => "0000", 1438 => "0000", 1439 => "0000", 
    1440 => "0000", 1441 => "0000", 1442 => "0000", 1443 => "0000", 
    1444 => "0000", 1445 => "0000", 1446 => "0000", 1447 => "0000", 
    1448 => "0000", 1449 => "0000", 1450 => "0000", 1451 => "0000", 
    1452 => "0000", 1453 => "0000", 1454 => "0000", 1455 => "0000", 
    1456 => "0000", 1457 => "0000", 1458 => "0000", 1459 => "0000", 
    1460 => "0000", 1461 => "0000", 1462 => "0000", 1463 => "0000", 
    1464 => "0000", 1465 => "0000", 1466 => "0000", 1467 => "0010", 
    1468 => "0000", 1469 => "0000", 1470 => "0000", 1471 => "0000", 
    1472 => "0000", 1473 => "0000", 1474 => "0000", 1475 => "0000", 
    1476 => "0000", 1477 => "0000", 1478 => "0000", 1479 => "0000", 
    1480 => "0000", 1481 => "0000", 1482 => "0000", 1483 => "0000", 
    1484 => "0000", 1485 => "0000", 1486 => "0000", 1487 => "0000", 
    1488 => "0000", 1489 => "0000", 1490 => "0000", 1491 => "0000", 
    1492 => "0000", 1493 => "0000", 1494 => "0000", 1495 => "0000", 
    1496 => "0000", 1497 => "0000", 1498 => "0000", 1499 => "0000", 
    1500 => "0000", 1501 => "0000", 1502 => "0000", 1503 => "0000", 
    1504 => "0000", 1505 => "0000", 1506 => "0000", 1507 => "0000", 
    1508 => "0000", 1509 => "0000", 1510 => "0000", 1511 => "0000", 
    1512 => "0000", 1513 => "0000", 1514 => "0000", 1515 => "0000", 
    1516 => "0000", 1517 => "0000", 1518 => "0000", 1519 => "0000", 
    1520 => "0000", 1521 => "0000", 1522 => "0000", 1523 => "0000", 
    1524 => "0000", 1525 => "0000", 1526 => "0000", 1527 => "0000", 
    1528 => "0000", 1529 => "0000", 1530 => "0000", 1531 => "0000", 
    1532 => "0000", 1533 => "0000", 1534 => "0000", 1535 => "0000", 
    1536 => "0000", 1537 => "0000", 1538 => "0000", 1539 => "0000", 
    1540 => "0000", 1541 => "0000", 1542 => "0000", 1543 => "0000", 
    1544 => "0000", 1545 => "0000", 1546 => "0000", 1547 => "0000", 
    1548 => "0000", 1549 => "0000", 1550 => "0000", 1551 => "0000", 
    1552 => "0000", 1553 => "0000", 1554 => "0000", 1555 => "0000", 
    1556 => "0000", 1557 => "0000", 1558 => "0000", 1559 => "0000", 
    1560 => "0000", 1561 => "0000", 1562 => "0000", 1563 => "0000", 
    1564 => "0000", 1565 => "0000", 1566 => "0000", 1567 => "0000", 
    1568 => "0000", 1569 => "0000", 1570 => "0000", 1571 => "0000", 
    1572 => "1010", 1573 => "0000", 1574 => "0010", 1575 => "0000", 
    1576 => "0000", 1577 => "0000", 1578 => "0000", 1579 => "0000", 
    1580 => "0000", 1581 => "0000", 1582 => "0000", 1583 => "0000", 
    1584 => "0000", 1585 => "0000", 1586 => "0000", 1587 => "0000", 
    1588 => "0000", 1589 => "0000", 1590 => "0000", 1591 => "0000", 
    1592 => "0000", 1593 => "0000", 1594 => "0000", 1595 => "0000", 
    1596 => "0000", 1597 => "0000", 1598 => "0000", 1599 => "0000", 
    1600 => "0000", 1601 => "0000", 1602 => "0000", 1603 => "0000", 
    1604 => "0000", 1605 => "0000", 1606 => "0000", 1607 => "0000", 
    1608 => "0000", 1609 => "0000", 1610 => "0000", 1611 => "0000", 
    1612 => "0000", 1613 => "0000", 1614 => "0000", 1615 => "0000", 
    1616 => "0000", 1617 => "0000", 1618 => "0000", 1619 => "0000", 
    1620 => "0000", 1621 => "0000", 1622 => "0000", 1623 => "0000", 
    1624 => "0000", 1625 => "0000", 1626 => "0000", 1627 => "0000", 
    1628 => "0000", 1629 => "0000", 1630 => "0000", 1631 => "0000", 
    1632 => "0000", 1633 => "0000", 1634 => "0000", 1635 => "0000", 
    1636 => "0000", 1637 => "0000", 1638 => "0000", 1639 => "0000", 
    1640 => "0000", 1641 => "0000", 1642 => "0000", 1643 => "0000", 
    1644 => "0000", 1645 => "0000", 1646 => "0000", 1647 => "0000", 
    1648 => "0000", 1649 => "0000", 1650 => "0000", 1651 => "0000", 
    1652 => "0000", 1653 => "0000", 1654 => "0000", 1655 => "0000", 
    1656 => "0000", 1657 => "0000", 1658 => "0000", 1659 => "0000", 
    1660 => "0000", 1661 => "0000", 1662 => "0000", 1663 => "0000", 
    1664 => "0000", 1665 => "0000", 1666 => "0000", 1667 => "0000", 
    1668 => "0000", 1669 => "0000", 1670 => "0000", 1671 => "0000", 
    1672 => "0000", 1673 => "0000", 1674 => "0000", 1675 => "0000", 
    1676 => "0000", 1677 => "0000", 1678 => "0000", 1679 => "0000", 
    1680 => "0000", 1681 => "0000", 1682 => "0000", 1683 => "0000", 
    1684 => "0000", 1685 => "0000", 1686 => "0000", 1687 => "0000", 
    1688 => "0000", 1689 => "0000", 1690 => "0000", 1691 => "0000", 
    1692 => "0000", 1693 => "0000", 1694 => "0000", 1695 => "0000", 
    1696 => "0000", 1697 => "0000", 1698 => "0000", 1699 => "0000", 
    1700 => "0000", 1701 => "0000", 1702 => "0000", 1703 => "0000", 
    1704 => "0000", 1705 => "0000", 1706 => "0000", 1707 => "0000", 
    1708 => "1000", 1709 => "0000", 1710 => "0000", 1711 => "0000", 
    1712 => "0001", 1713 => "0000", 1714 => "0000", 1715 => "0000", 
    1716 => "0000", 1717 => "0000", 1718 => "0000", 1719 => "0000", 
    1720 => "0000", 1721 => "0000", 1722 => "0000", 1723 => "0000", 
    1724 => "0000", 1725 => "0000", 1726 => "0000", 1727 => "0000", 
    1728 => "0000", 1729 => "0000", 1730 => "0000", 1731 => "0000", 
    1732 => "0000", 1733 => "0000", 1734 => "0000", 1735 => "0000", 
    1736 => "0000", 1737 => "0000", 1738 => "0000", 1739 => "0000", 
    1740 => "0000", 1741 => "0000", 1742 => "0000", 1743 => "0000", 
    1744 => "0000", 1745 => "0000", 1746 => "0000", 1747 => "0000", 
    1748 => "0000", 1749 => "0000", 1750 => "0000", 1751 => "0000", 
    1752 => "0000", 1753 => "0000", 1754 => "0000", 1755 => "0000", 
    1756 => "0000", 1757 => "0000", 1758 => "0000", 1759 => "0000", 
    1760 => "0000", 1761 => "0000", 1762 => "0000", 1763 => "0000", 
    1764 => "0000", 1765 => "0000", 1766 => "0000", 1767 => "0000", 
    1768 => "0000", 1769 => "0000", 1770 => "0000", 1771 => "0000", 
    1772 => "0000", 1773 => "0000", 1774 => "0000", 1775 => "0000", 
    1776 => "0000", 1777 => "0000", 1778 => "0000", 1779 => "0000", 
    1780 => "0000", 1781 => "0000", 1782 => "0000", 1783 => "0000", 
    1784 => "0000", 1785 => "0000", 1786 => "0000", 1787 => "0000", 
    1788 => "0000", 1789 => "0000", 1790 => "0000", 1791 => "0000", 
    1792 => "0000", 1793 => "0000", 1794 => "0000", 1795 => "0000", 
    1796 => "0000");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

