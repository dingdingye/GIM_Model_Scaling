-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity top_digits_features_7_1_0_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 5; 
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


architecture rtl of top_digits_features_7_1_0_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00000", 1 => "10000", 2 => "01000", 3 => "01101", 
    4 => "00110", 5 => "01111", 6 => "00011", 7 => "01000", 
    8 => "00000", 9 => "01010", 10 => "00000", 11 => "10000", 
    12 => "01100", 13 => "01110", 14 => "00011", 15 => "00001", 
    16 => "00111", 17 => "01010", 18 => "01010", 19 => "10000", 
    20 => "00001", 21 => "10000", 22 => "01101", 23 => "00010", 
    24 => "00111", 25 => "00000", 26 => "00011", 27 => "00000", 
    28 => "00000", 29 => "10000", 30 => "00000", 31 => "01101", 
    32 => "00011", 33 => "00110", 34 => "00010", 35 => "00010", 
    36 => "00000", 37 => "01110", 38 => "01010", 39 => "10000", 
    40 => "01011", 41 => "00010", 42 => "10000", 43 => "00000", 
    44 => "00111", 45 => "01111", 46 => "01000", 47 => "10000", 
    48 => "00000", 49 => "00010", 50 => "00011", 51 => "00001", 
    52 => "00010", 53 => "00000", 54 => "00000", 55 => "01010", 
    56 => "10000", 57 => "00111", 58 => "00000", 59 => "01110", 
    60 => "10000", 61 => "01000", 62 => "10000", 63 => "10000", 
    64 => "00101", 65 => "00001", 66 => "00000", 67 => "00000", 
    68 => "00000", 69 => "01111", 70 => "10000", 71 => "00000", 
    72 => "01010", 73 => "10000", 74 => "00000", 75 => "01001", 
    76 => "01100", 77 => "01110", 78 => "01000", 79 => "00011", 
    80 => "10000", 81 => "01001", 82 => "00001", 83 => "01011", 
    84 => "01101", 85 => "10000", 86 => "00000", 87 => "01000", 
    88 => "00000", 89 => "01101", 90 => "10000", 91 => "10000", 
    92 => "01110", 93 => "10000", 94 => "01010", 95 => "01000", 
    96 => "10000", 97 => "00101", 98 => "10000", 99 => "10000", 
    100 => "00101", 101 => "01011", 102 => "00000", 103 => "01111", 
    104 => "00000", 105 => "01010", 106 => "00101", 107 => "10000", 
    108 => "00100", 109 => "00000", 110 => "00000", 111 => "00000", 
    112 => "01001", 113 => "10000", 114 => "00101", 115 => "00001", 
    116 => "00100", 117 => "00000", 118 => "00010", 119 => "00101", 
    120 => "00001", 121 => "01011", 122 => "01101", 123 => "10000", 
    124 => "00001", 125 => "00011", 126 => "00110", 127 => "01110", 
    128 => "01101", 129 => "01111", 130 => "00000", 131 => "10000", 
    132 => "01110", 133 => "01011", 134 => "10000", 135 => "00000", 
    136 => "00000", 137 => "01011", 138 => "10000", 139 => "01010", 
    140 => "00011", 141 => "10000", 142 => "10000", 143 => "01110", 
    144 => "01101", 145 => "00001", 146 => "00010", 147 => "10000", 
    148 => "00101", 149 => "10000", 150 => "00100", 151 => "10000", 
    152 => "10000", 153 => "00011", 154 => "10000", 155 => "00000", 
    156 => "00000", 157 => "10000", 158 => "01010", 159 => "01000", 
    160 => "00010", 161 => "01100", 162 => "00000", 163 => "00000", 
    164 => "00000", 165 => "00000", 166 => "00000", 167 => "00011", 
    168 => "01101", 169 => "00111", 170 => "01110", 171 => "10000", 
    172 => "10000", 173 => "00100", 174 => "00110", 175 => "01010", 
    176 => "00000", 177 => "10000", 178 => "00001", 179 => "00110", 
    180 => "10000", 181 => "10000", 182 => "01110", 183 => "01110", 
    184 => "01000", 185 => "00110", 186 => "10000", 187 => "10000", 
    188 => "00000", 189 => "01011", 190 => "10000", 191 => "01110", 
    192 => "00010", 193 => "01111", 194 => "10000", 195 => "00010", 
    196 => "00000", 197 => "00000", 198 => "01100", 199 => "01011", 
    200 => "10000", 201 => "00000", 202 => "00011", 203 => "01111", 
    204 => "00000", 205 => "01000", 206 => "10000", 207 => "10000", 
    208 => "01000", 209 => "01011", 210 => "10000", 211 => "10000", 
    212 => "00000", 213 => "01010", 214 => "01111", 215 => "10000", 
    216 => "10000", 217 => "01110", 218 => "10000", 219 => "10000", 
    220 => "01001", 221 => "10000", 222 => "00011", 223 => "00011", 
    224 => "01010", 225 => "10000", 226 => "00100", 227 => "10000", 
    228 => "10000", 229 => "00001", 230 => "00000", 231 => "00010", 
    232 => "00000", 233 => "01110", 234 => "00001", 235 => "10000", 
    236 => "10000", 237 => "00000", 238 => "10000", 239 => "10000", 
    240 => "10000", 241 => "00100", 242 => "01101", 243 => "01100", 
    244 => "10000", 245 => "00000", 246 => "00000", 247 => "10000", 
    248 => "01011", 249 => "10000", 250 => "10000", 251 => "00110", 
    252 => "00100", 253 => "10000", 254 => "00110", 255 => "00010", 
    256 => "00000", 257 => "10000", 258 => "01011", 259 => "01111", 
    260 => "00000", 261 => "00100", 262 => "00000", 263 => "00100", 
    264 => "00111", 265 => "00011", 266 => "00110", 267 => "10000", 
    268 => "10000", 269 => "10000", 270 => "00001", 271 => "00010", 
    272 => "00000", 273 => "01001", 274 => "01000", 275 => "00100", 
    276 => "00000", 277 => "10000", 278 => "01100", 279 => "01101", 
    280 => "00000", 281 => "00000", 282 => "00000", 283 => "00000", 
    284 => "00000", 285 => "01110", 286 => "00000", 287 => "00110", 
    288 => "00010", 289 => "00000", 290 => "00000", 291 => "00000", 
    292 => "00000", 293 => "00001", 294 => "00010", 295 => "00000", 
    296 => "00000", 297 => "00000", 298 => "10000", 299 => "01001", 
    300 => "00000", 301 => "01101", 302 => "00100", 303 => "10000", 
    304 => "00000", 305 => "00001", 306 => "10000", 307 => "10000", 
    308 => "00001", 309 => "00001", 310 => "01110", 311 => "00000", 
    312 => "10000", 313 => "10000", 314 => "00000", 315 => "10000", 
    316 => "01111", 317 => "00000", 318 => "01110", 319 => "01111", 
    320 => "00000", 321 => "00000", 322 => "00000", 323 => "00000", 
    324 => "00000", 325 => "00010", 326 => "10000", 327 => "00001", 
    328 => "00000", 329 => "00011", 330 => "00100", 331 => "10000", 
    332 => "00010", 333 => "10000", 334 => "00000", 335 => "00100", 
    336 => "10000", 337 => "01000", 338 => "00000", 339 => "01110", 
    340 => "01101", 341 => "10000", 342 => "00111", 343 => "00010", 
    344 => "00000", 345 => "01011", 346 => "10000", 347 => "01111", 
    348 => "00010", 349 => "01111", 350 => "01110", 351 => "00000", 
    352 => "01000", 353 => "00001", 354 => "01110", 355 => "10000", 
    356 => "00000", 357 => "01011", 358 => "00011", 359 => "01010", 
    360 => "00000", 361 => "00010", 362 => "00010", 363 => "01010", 
    364 => "10000", 365 => "00000", 366 => "00001", 367 => "00000", 
    368 => "01010", 369 => "01011", 370 => "00100", 371 => "10000", 
    372 => "10000", 373 => "00000", 374 => "00000", 375 => "00001", 
    376 => "00000", 377 => "00000", 378 => "01101", 379 => "00010", 
    380 => "00011", 381 => "00000", 382 => "00010", 383 => "00011", 
    384 => "00000", 385 => "01000", 386 => "01001", 387 => "10000", 
    388 => "01110", 389 => "01001", 390 => "10000", 391 => "01011", 
    392 => "00000", 393 => "00000", 394 => "00000", 395 => "01101", 
    396 => "00110", 397 => "10000", 398 => "01111", 399 => "10000", 
    400 => "10000", 401 => "00000", 402 => "00001", 403 => "00000", 
    404 => "00111", 405 => "00110", 406 => "00101", 407 => "10000", 
    408 => "01111", 409 => "01111", 410 => "01111", 411 => "00001", 
    412 => "00010", 413 => "00000", 414 => "00000", 415 => "00100", 
    416 => "00101", 417 => "01000", 418 => "01101", 419 => "00000", 
    420 => "00000", 421 => "10000", 422 => "00101", 423 => "01001", 
    424 => "00100", 425 => "01101", 426 => "01010", 427 => "00110", 
    428 => "10000", 429 => "00000", 430 => "00110", 431 => "10000", 
    432 => "01000", 433 => "10000", 434 => "00001", 435 => "00011", 
    436 => "10000", 437 => "10000", 438 => "00000", 439 => "00010", 
    440 => "10000", 441 => "00000", 442 => "00101", 443 => "01101", 
    444 => "00000", 445 => "01110", 446 => "10000", 447 => "00000", 
    448 => "01100", 449 => "01110", 450 => "01010", 451 => "00010", 
    452 => "00000", 453 => "00000", 454 => "10000", 455 => "01101", 
    456 => "10000", 457 => "10000", 458 => "00011", 459 => "01001", 
    460 => "00000", 461 => "10000", 462 => "01011", 463 => "10000", 
    464 => "00000", 465 => "00111", 466 => "10000", 467 => "00000", 
    468 => "00000", 469 => "10000", 470 => "01000", 471 => "10000", 
    472 => "00001", 473 => "00101", 474 => "00111", 475 => "01001", 
    476 => "10000", 477 => "10000", 478 => "01110", 479 => "10000", 
    480 => "00001", 481 => "00011", 482 => "00000", 483 => "01011", 
    484 => "01110", 485 => "10000", 486 => "01111", 487 => "01011", 
    488 => "00100", 489 => "10000", 490 => "00001", 491 => "01000", 
    492 => "00000", 493 => "10000", 494 => "00000", 495 => "00000", 
    496 => "01100", 497 => "01000", 498 => "00000", 499 => "01110", 
    500 => "00001", 501 => "01100", 502 => "00101", 503 => "00000", 
    504 => "00000", 505 => "01101", 506 => "00000", 507 => "00100", 
    508 => "01001", 509 => "00100", 510 => "10000", 511 => "00101", 
    512 => "00001", 513 => "00010", 514 => "01010", 515 => "00011", 
    516 => "00001", 517 => "01001", 518 => "00110", 519 => "00100", 
    520 => "01010", 521 => "01001", 522 => "00000", 523 => "10000", 
    524 => "01100", 525 => "00011", 526 => "00000", 527 => "00011", 
    528 => "10000", 529 => "01001", 530 => "01010", 531 => "00010", 
    532 => "00000", 533 => "01010", 534 => "01001", 535 => "00000", 
    536 => "00110", 537 => "00110", 538 => "01101", 539 => "01101", 
    540 => "00100", 541 => "01000", 542 => "00000", 543 => "00000", 
    544 => "00100", 545 => "00110", 546 => "00000", 547 => "01000", 
    548 => "01000", 549 => "00110", 550 => "00000", 551 => "01000", 
    552 => "00010", 553 => "01110", 554 => "00000", 555 => "01001", 
    556 => "00111", 557 => "00001", 558 => "00100", 559 => "00101", 
    560 => "00100", 561 => "01101", 562 => "00100", 563 => "00111", 
    564 => "00110", 565 => "00000", 566 => "01011", 567 => "01111", 
    568 => "01101", 569 => "00000", 570 => "01000", 571 => "00000", 
    572 => "00001", 573 => "01110", 574 => "00000", 575 => "01101", 
    576 => "00011", 577 => "00010", 578 => "00100", 579 => "01000", 
    580 => "00010", 581 => "00000", 582 => "00000", 583 => "00000", 
    584 => "10000", 585 => "00111", 586 => "00111", 587 => "00110", 
    588 => "01101", 589 => "00111", 590 => "00001", 591 => "01111", 
    592 => "00011", 593 => "01101", 594 => "00111", 595 => "00001", 
    596 => "00100", 597 => "01110", 598 => "00000", 599 => "01011", 
    600 => "01001", 601 => "01100", 602 => "00111", 603 => "01001", 
    604 => "00000", 605 => "00100", 606 => "00101", 607 => "01001", 
    608 => "00100", 609 => "01011", 610 => "01010", 611 => "00000", 
    612 => "01000", 613 => "00101", 614 => "01111", 615 => "10000", 
    616 => "00010", 617 => "00000", 618 => "00100", 619 => "01110", 
    620 => "00000", 621 => "00101", 622 => "00000", 623 => "10000", 
    624 => "01001", 625 => "00000", 626 => "00110", 627 => "00000", 
    628 => "10000", 629 => "10000", 630 => "00001", 631 => "01110", 
    632 => "10000", 633 => "00110", 634 => "00110", 635 => "01011", 
    636 => "00000", 637 => "01001", 638 => "01000", 639 => "00110", 
    640 => "00110", 641 => "00010", 642 => "00010", 643 => "01000", 
    644 => "01110", 645 => "00101", 646 => "00001", 647 => "10000", 
    648 => "10000", 649 => "01111", 650 => "01110", 651 => "00000", 
    652 => "00000", 653 => "01010", 654 => "00101", 655 => "00110", 
    656 => "00000", 657 => "10000", 658 => "10000", 659 => "01111", 
    660 => "10000", 661 => "00000", 662 => "00000", 663 => "00000", 
    664 => "01110", 665 => "00010", 666 => "00000", 667 => "01101", 
    668 => "01000", 669 => "01111", 670 => "01100", 671 => "00000", 
    672 => "00000", 673 => "00000", 674 => "00000", 675 => "00101", 
    676 => "00000", 677 => "00000", 678 => "00000", 679 => "00000", 
    680 => "00000", 681 => "00000", 682 => "00010", 683 => "01101", 
    684 => "01100", 685 => "00000", 686 => "00101", 687 => "01011", 
    688 => "10000", 689 => "00000", 690 => "00000", 691 => "00010", 
    692 => "00000", 693 => "10000", 694 => "00000", 695 => "00000", 
    696 => "00110", 697 => "01101", 698 => "00001", 699 => "01011", 
    700 => "01010", 701 => "00100", 702 => "10000", 703 => "00100", 
    704 => "00000", 705 => "01111", 706 => "10000", 707 => "00000", 
    708 => "01100", 709 => "01110", 710 => "00101", 711 => "00000", 
    712 => "00000", 713 => "00000", 714 => "01111", 715 => "01001", 
    716 => "10000", 717 => "00000", 718 => "00000", 719 => "01000", 
    720 => "00001", 721 => "01010", 722 => "00000", 723 => "10000", 
    724 => "00001", 725 => "00001", 726 => "10000", 727 => "00001", 
    728 => "00000", 729 => "01100", 730 => "10000", 731 => "10000", 
    732 => "00000", 733 => "01100", 734 => "00001", 735 => "01111", 
    736 => "10000", 737 => "01011", 738 => "01010", 739 => "10000", 
    740 => "00010", 741 => "00000", 742 => "01101", 743 => "01000", 
    744 => "01100", 745 => "10000", 746 => "01010", 747 => "00001", 
    748 => "00000", 749 => "10000", 750 => "00010", 751 => "00100", 
    752 => "00001", 753 => "10000", 754 => "00001", 755 => "00000", 
    756 => "00101", 757 => "00001", 758 => "00000", 759 => "10000", 
    760 => "00110", 761 => "01101", 762 => "10000", 763 => "00000", 
    764 => "00100", 765 => "00000", 766 => "00000", 767 => "00001", 
    768 => "00001", 769 => "01011", 770 => "00011", 771 => "00100", 
    772 => "00001", 773 => "00010", 774 => "00111", 775 => "00110", 
    776 => "00000", 777 => "10000", 778 => "01101", 779 => "00101", 
    780 => "00000", 781 => "00001", 782 => "00000", 783 => "00101", 
    784 => "01010", 785 => "01101", 786 => "00000", 787 => "10000", 
    788 => "10000", 789 => "01111", 790 => "00010", 791 => "00000", 
    792 => "00100", 793 => "01100", 794 => "01010", 795 => "01010", 
    796 => "00000", 797 => "10000", 798 => "01110", 799 => "01010", 
    800 => "00000", 801 => "00000", 802 => "00010", 803 => "01101", 
    804 => "01000", 805 => "10000", 806 => "00000", 807 => "00110", 
    808 => "00101", 809 => "00000", 810 => "00000", 811 => "00011", 
    812 => "00000", 813 => "01010", 814 => "01010", 815 => "00010", 
    816 => "00000", 817 => "00010", 818 => "10000", 819 => "01100", 
    820 => "00011", 821 => "00110", 822 => "00000", 823 => "10000", 
    824 => "10000", 825 => "01010", 826 => "10000", 827 => "00110", 
    828 => "01011", 829 => "00000", 830 => "10000", 831 => "00000", 
    832 => "00010", 833 => "01100", 834 => "00001", 835 => "01100", 
    836 => "01011", 837 => "01001", 838 => "00111", 839 => "00111", 
    840 => "00110", 841 => "00001", 842 => "00000", 843 => "01000", 
    844 => "00000", 845 => "01100", 846 => "10000", 847 => "00001", 
    848 => "00000", 849 => "01101", 850 => "00000", 851 => "01110", 
    852 => "00011", 853 => "01000", 854 => "00010", 855 => "00000", 
    856 => "10000", 857 => "01011", 858 => "00000", 859 => "01101", 
    860 => "00110", 861 => "10000", 862 => "00000", 863 => "00101", 
    864 => "00100", 865 => "10000", 866 => "10000", 867 => "01111", 
    868 => "01100", 869 => "10000", 870 => "10000", 871 => "00000", 
    872 => "01111", 873 => "00001", 874 => "01111", 875 => "10000", 
    876 => "00000", 877 => "00000", 878 => "00000", 879 => "01110", 
    880 => "00100", 881 => "00110", 882 => "00000", 883 => "10000", 
    884 => "01110", 885 => "00000", 886 => "00000", 887 => "00010", 
    888 => "01010", 889 => "01010", 890 => "01010", 891 => "00000", 
    892 => "01100", 893 => "00101", 894 => "01101", 895 => "01001", 
    896 => "00000", 897 => "00001", 898 => "00110", 899 => "01111", 
    900 => "00010", 901 => "00110", 902 => "00000", 903 => "01011", 
    904 => "10000", 905 => "10000", 906 => "00001", 907 => "10000", 
    908 => "01100", 909 => "00001", 910 => "00101", 911 => "00000", 
    912 => "00010", 913 => "01010", 914 => "00011", 915 => "00000", 
    916 => "00110", 917 => "00100", 918 => "01110", 919 => "00011", 
    920 => "00110", 921 => "00000", 922 => "01010", 923 => "01010", 
    924 => "00111", 925 => "00000", 926 => "00100", 927 => "10000", 
    928 => "10000", 929 => "00110", 930 => "00011", 931 => "00000", 
    932 => "00011", 933 => "00111", 934 => "00111", 935 => "00001", 
    936 => "00101", 937 => "00011", 938 => "00110", 939 => "00000", 
    940 => "00011", 941 => "00000", 942 => "00001", 943 => "00100", 
    944 => "01101", 945 => "00110", 946 => "00000", 947 => "10000", 
    948 => "01000", 949 => "00001", 950 => "01111", 951 => "01010", 
    952 => "00110", 953 => "10000", 954 => "00111", 955 => "00111", 
    956 => "01111", 957 => "00000", 958 => "00011", 959 => "10000", 
    960 => "00000", 961 => "01101", 962 => "01101", 963 => "00011", 
    964 => "00111", 965 => "10000", 966 => "00010", 967 => "00000", 
    968 => "00000", 969 => "00000", 970 => "00101", 971 => "00101", 
    972 => "01100", 973 => "00100", 974 => "00000", 975 => "00101", 
    976 => "00101", 977 => "01110", 978 => "00001", 979 => "01111", 
    980 => "00000", 981 => "00010", 982 => "01010", 983 => "00110", 
    984 => "00000", 985 => "00001", 986 => "01110", 987 => "00101", 
    988 => "00110", 989 => "00000", 990 => "01000", 991 => "00110", 
    992 => "01101", 993 => "00101", 994 => "01010", 995 => "00110", 
    996 => "00000", 997 => "00000", 998 => "00100", 999 => "00110", 
    1000 => "01010", 1001 => "01000", 1002 => "00000", 1003 => "00011", 
    1004 => "10000", 1005 => "00000", 1006 => "01100", 1007 => "00000", 
    1008 => "00101", 1009 => "00010", 1010 => "01001", 1011 => "00011", 
    1012 => "00001", 1013 => "01001", 1014 => "01100", 1015 => "00111", 
    1016 => "01111", 1017 => "10000", 1018 => "01000", 1019 => "00110", 
    1020 => "01100", 1021 => "00010", 1022 => "00100", 1023 => "00000", 
    1024 => "00100", 1025 => "00000", 1026 => "00100", 1027 => "01011", 
    1028 => "00001", 1029 => "00000", 1030 => "10000", 1031 => "10000", 
    1032 => "01110", 1033 => "00000", 1034 => "00000", 1035 => "00000", 
    1036 => "01001", 1037 => "00111", 1038 => "10000", 1039 => "00000", 
    1040 => "10000", 1041 => "01001", 1042 => "01010", 1043 => "00000", 
    1044 => "01100", 1045 => "00000", 1046 => "01001", 1047 => "01100", 
    1048 => "00000", 1049 => "00001", 1050 => "10000", 1051 => "01011", 
    1052 => "00101", 1053 => "00000", 1054 => "00100", 1055 => "00000", 
    1056 => "01000", 1057 => "01111", 1058 => "00101", 1059 => "00000", 
    1060 => "00001", 1061 => "00000", 1062 => "00010", 1063 => "00010", 
    1064 => "00001", 1065 => "00011", 1066 => "00111", 1067 => "01100", 
    1068 => "00000", 1069 => "01111", 1070 => "00000", 1071 => "10000", 
    1072 => "00100", 1073 => "01101", 1074 => "01010", 1075 => "00011", 
    1076 => "10000", 1077 => "00000", 1078 => "00000", 1079 => "01010", 
    1080 => "10000", 1081 => "00101", 1082 => "00000", 1083 => "01111", 
    1084 => "01000", 1085 => "00001", 1086 => "01100", 1087 => "01101", 
    1088 => "10000", 1089 => "10000", 1090 => "01010", 1091 => "00000", 
    1092 => "00000", 1093 => "00000", 1094 => "00000", 1095 => "00000", 
    1096 => "00011", 1097 => "10000", 1098 => "00101", 1099 => "00010", 
    1100 => "00001", 1101 => "00000", 1102 => "01011", 1103 => "01010", 
    1104 => "00101", 1105 => "00000", 1106 => "00000", 1107 => "01111", 
    1108 => "01101", 1109 => "00001", 1110 => "01100", 1111 => "10000", 
    1112 => "10000", 1113 => "10000", 1114 => "00000", 1115 => "00000", 
    1116 => "01101", 1117 => "10000", 1118 => "00000", 1119 => "01001", 
    1120 => "10000", 1121 => "01100", 1122 => "00000", 1123 => "00111", 
    1124 => "00001", 1125 => "00110", 1126 => "01111", 1127 => "00000", 
    1128 => "00000", 1129 => "00000", 1130 => "10000", 1131 => "00001", 
    1132 => "00111", 1133 => "00000", 1134 => "10000", 1135 => "00110", 
    1136 => "00000", 1137 => "00000", 1138 => "00000", 1139 => "01101", 
    1140 => "10000", 1141 => "01011", 1142 => "01101", 1143 => "01001", 
    1144 => "00000", 1145 => "01011", 1146 => "10000", 1147 => "00000", 
    1148 => "00000", 1149 => "01111", 1150 => "00101", 1151 => "00011", 
    1152 => "00001", 1153 => "00000", 1154 => "00100", 1155 => "00001", 
    1156 => "01110", 1157 => "00000", 1158 => "10000", 1159 => "01100", 
    1160 => "10000", 1161 => "00000", 1162 => "00000", 1163 => "00000", 
    1164 => "01010", 1165 => "01011", 1166 => "00001", 1167 => "00000", 
    1168 => "10000", 1169 => "10000", 1170 => "01110", 1171 => "00101", 
    1172 => "00000", 1173 => "00000", 1174 => "00001", 1175 => "01101", 
    1176 => "01000", 1177 => "00001", 1178 => "10000", 1179 => "01101", 
    1180 => "00111", 1181 => "00100", 1182 => "00000", 1183 => "00000", 
    1184 => "00000", 1185 => "01011", 1186 => "00010", 1187 => "00000", 
    1188 => "00101", 1189 => "00001", 1190 => "00000", 1191 => "00000", 
    1192 => "00001", 1193 => "00000", 1194 => "00011", 1195 => "01001", 
    1196 => "00110", 1197 => "01111", 1198 => "00010", 1199 => "10000", 
    1200 => "01101", 1201 => "01000", 1202 => "01111", 1203 => "00000", 
    1204 => "10000", 1205 => "00000", 1206 => "00000", 1207 => "01100", 
    1208 => "10000", 1209 => "01010", 1210 => "00101", 1211 => "10000", 
    1212 => "00000", 1213 => "01110", 1214 => "01110", 1215 => "00001", 
    1216 => "01001", 1217 => "01010", 1218 => "01011", 1219 => "00101", 
    1220 => "01000", 1221 => "00001", 1222 => "00000", 1223 => "00010", 
    1224 => "00001", 1225 => "00000", 1226 => "01100", 1227 => "10000", 
    1228 => "00000", 1229 => "00000", 1230 => "00010", 1231 => "00000", 
    1232 => "01101", 1233 => "00100", 1234 => "00101", 1235 => "00000", 
    1236 => "00000", 1237 => "10000", 1238 => "01001", 1239 => "00000", 
    1240 => "01011", 1241 => "01011", 1242 => "10000", 1243 => "10000", 
    1244 => "00010", 1245 => "00000", 1246 => "01010", 1247 => "10000", 
    1248 => "10000", 1249 => "00111", 1250 => "10000", 1251 => "01000", 
    1252 => "00000", 1253 => "00110", 1254 => "00000", 1255 => "10000", 
    1256 => "01100", 1257 => "00001", 1258 => "01000", 1259 => "00000", 
    1260 => "01100", 1261 => "00000", 1262 => "01001", 1263 => "00001", 
    1264 => "00101", 1265 => "01110", 1266 => "00000", 1267 => "00010", 
    1268 => "00000", 1269 => "00000", 1270 => "01110", 1271 => "01110", 
    1272 => "01111", 1273 => "01100", 1274 => "00000", 1275 => "00100", 
    1276 => "01000", 1277 => "00000", 1278 => "00000", 1279 => "10000", 
    1280 => "01111", 1281 => "00001", 1282 => "01100", 1283 => "00000", 
    1284 => "01101", 1285 => "00000", 1286 => "01101", 1287 => "00001", 
    1288 => "00110", 1289 => "00100", 1290 => "01011", 1291 => "00010", 
    1292 => "00000", 1293 => "00110", 1294 => "01110", 1295 => "01000", 
    1296 => "01111", 1297 => "00101", 1298 => "10000", 1299 => "01010", 
    1300 => "00111", 1301 => "00001", 1302 => "00000", 1303 => "00110", 
    1304 => "00010", 1305 => "01111", 1306 => "01110", 1307 => "00001", 
    1308 => "01111", 1309 => "00101", 1310 => "10000", 1311 => "00011", 
    1312 => "00000", 1313 => "00000", 1314 => "00101", 1315 => "01000", 
    1316 => "00011", 1317 => "00100", 1318 => "01001", 1319 => "00000", 
    1320 => "00000", 1321 => "00000", 1322 => "00011", 1323 => "00001", 
    1324 => "01110", 1325 => "01010", 1326 => "00010", 1327 => "01001", 
    1328 => "00001", 1329 => "01101", 1330 => "00101", 1331 => "00101", 
    1332 => "01101", 1333 => "00000", 1334 => "10000", 1335 => "00000", 
    1336 => "00001", 1337 => "00001", 1338 => "00000", 1339 => "01010", 
    1340 => "01100", 1341 => "00110", 1342 => "00010", 1343 => "10000", 
    1344 => "00100", 1345 => "00010", 1346 => "01010", 1347 => "10000", 
    1348 => "01101", 1349 => "01010", 1350 => "01010", 1351 => "00101", 
    1352 => "00001", 1353 => "00010", 1354 => "00001", 1355 => "00000", 
    1356 => "01000", 1357 => "10000", 1358 => "00000", 1359 => "00000", 
    1360 => "01001", 1361 => "00000", 1362 => "01100", 1363 => "01100", 
    1364 => "00000", 1365 => "00000", 1366 => "00000", 1367 => "10000", 
    1368 => "01000", 1369 => "00000", 1370 => "01011", 1371 => "01010", 
    1372 => "10000", 1373 => "10000", 1374 => "00000", 1375 => "00000", 
    1376 => "01111", 1377 => "10000", 1378 => "01100", 1379 => "01100", 
    1380 => "01110", 1381 => "00100", 1382 => "00011", 1383 => "10000", 
    1384 => "00100", 1385 => "01110", 1386 => "01111", 1387 => "00001", 
    1388 => "00001", 1389 => "00000", 1390 => "01101", 1391 => "00000", 
    1392 => "01101", 1393 => "00001", 1394 => "01100", 1395 => "01101", 
    1396 => "00000", 1397 => "00011", 1398 => "00000", 1399 => "00100", 
    1400 => "00010", 1401 => "01110", 1402 => "01010", 1403 => "01000", 
    1404 => "00000", 1405 => "00111", 1406 => "00101", 1407 => "00011", 
    1408 => "00001", 1409 => "01011", 1410 => "01110", 1411 => "00000", 
    1412 => "01100", 1413 => "00001", 1414 => "01001", 1415 => "00000", 
    1416 => "01111", 1417 => "01100", 1418 => "01100", 1419 => "01101", 
    1420 => "00000", 1421 => "00000", 1422 => "00000", 1423 => "00010", 
    1424 => "01101", 1425 => "00011", 1426 => "01110", 1427 => "01000", 
    1428 => "01110", 1429 => "00001", 1430 => "00000", 1431 => "00000", 
    1432 => "00000", 1433 => "00101", 1434 => "01111", 1435 => "00010", 
    1436 => "10000", 1437 => "01110", 1438 => "01110", 1439 => "01010", 
    1440 => "00000", 1441 => "00000", 1442 => "00000", 1443 => "00111", 
    1444 => "01100", 1445 => "00010", 1446 => "01010", 1447 => "00000", 
    1448 => "00000", 1449 => "00000", 1450 => "00000", 1451 => "00111", 
    1452 => "01001", 1453 => "00000", 1454 => "01101", 1455 => "00000", 
    1456 => "00100", 1457 => "10000", 1458 => "00011", 1459 => "00101", 
    1460 => "00111", 1461 => "00100", 1462 => "10000", 1463 => "00001", 
    1464 => "00010", 1465 => "10000", 1466 => "01101", 1467 => "00000", 
    1468 => "00000", 1469 => "10000", 1470 => "00100", 1471 => "01100", 
    1472 => "10000", 1473 => "00000", 1474 => "10000", 1475 => "01010", 
    1476 => "00010", 1477 => "10000", 1478 => "01100", 1479 => "00101", 
    1480 => "00000", 1481 => "00000", 1482 => "00000", 1483 => "00100", 
    1484 => "01011", 1485 => "01101", 1486 => "00000", 1487 => "00100", 
    1488 => "01101", 1489 => "00000", 1490 => "01101", 1491 => "00001", 
    1492 => "10000", 1493 => "00110", 1494 => "00000", 1495 => "01101", 
    1496 => "00000", 1497 => "00000", 1498 => "01111", 1499 => "00100", 
    1500 => "01110", 1501 => "00010", 1502 => "00010", 1503 => "00000", 
    1504 => "01101", 1505 => "10000", 1506 => "00011", 1507 => "01000", 
    1508 => "01110", 1509 => "00010", 1510 => "00000", 1511 => "00000", 
    1512 => "00111", 1513 => "00101", 1514 => "01010", 1515 => "01001", 
    1516 => "00010", 1517 => "00100", 1518 => "01110", 1519 => "00000", 
    1520 => "01110", 1521 => "00000", 1522 => "01011", 1523 => "00000", 
    1524 => "00011", 1525 => "00010", 1526 => "01001", 1527 => "00000", 
    1528 => "10000", 1529 => "00000", 1530 => "01011", 1531 => "10000", 
    1532 => "00000", 1533 => "00000", 1534 => "01010", 1535 => "00000", 
    1536 => "00110", 1537 => "00000", 1538 => "00101", 1539 => "00110", 
    1540 => "01110", 1541 => "00001", 1542 => "00000", 1543 => "01010", 
    1544 => "00001", 1545 => "00001", 1546 => "10000", 1547 => "01100", 
    1548 => "01111", 1549 => "00000", 1550 => "00000", 1551 => "01011", 
    1552 => "10000", 1553 => "10000", 1554 => "01011", 1555 => "00000", 
    1556 => "10000", 1557 => "00010", 1558 => "01110", 1559 => "00000", 
    1560 => "00000", 1561 => "00101", 1562 => "10000", 1563 => "00001", 
    1564 => "10000", 1565 => "01010", 1566 => "01111", 1567 => "00000", 
    1568 => "00001", 1569 => "00110", 1570 => "01111", 1571 => "10000", 
    1572 => "01101", 1573 => "00001", 1574 => "10000", 1575 => "01111", 
    1576 => "00000", 1577 => "01000", 1578 => "00000", 1579 => "00000", 
    1580 => "00110", 1581 => "00000", 1582 => "01110", 1583 => "01011", 
    1584 => "00000", 1585 => "10000", 1586 => "00111", 1587 => "10000", 
    1588 => "01111", 1589 => "00000", 1590 => "01111", 1591 => "00001", 
    1592 => "00000", 1593 => "00000", 1594 => "01100", 1595 => "00111", 
    1596 => "01010", 1597 => "00101", 1598 => "00001", 1599 => "10000", 
    1600 => "10000", 1601 => "00010", 1602 => "10000", 1603 => "01101", 
    1604 => "10000", 1605 => "00110", 1606 => "10000", 1607 => "00000", 
    1608 => "00000", 1609 => "00010", 1610 => "00001", 1611 => "01100", 
    1612 => "00100", 1613 => "01111", 1614 => "00000", 1615 => "00001", 
    1616 => "01011", 1617 => "00010", 1618 => "00101", 1619 => "01000", 
    1620 => "00000", 1621 => "10000", 1622 => "01110", 1623 => "00001", 
    1624 => "10000", 1625 => "01100", 1626 => "01101", 1627 => "01111", 
    1628 => "01011", 1629 => "00000", 1630 => "01110", 1631 => "10000", 
    1632 => "10000", 1633 => "01000", 1634 => "10000", 1635 => "10000", 
    1636 => "00000", 1637 => "00011", 1638 => "00000", 1639 => "01111", 
    1640 => "10000", 1641 => "00000", 1642 => "00000", 1643 => "00000", 
    1644 => "10000", 1645 => "00101", 1646 => "10000", 1647 => "00010", 
    1648 => "10000", 1649 => "00111", 1650 => "00000", 1651 => "00000", 
    1652 => "00101", 1653 => "10000", 1654 => "10000", 1655 => "00010", 
    1656 => "00000", 1657 => "10000", 1658 => "10000", 1659 => "00000", 
    1660 => "01100", 1661 => "00000", 1662 => "01110", 1663 => "00000", 
    1664 => "00011", 1665 => "00100", 1666 => "00001", 1667 => "00011", 
    1668 => "01110", 1669 => "01110", 1670 => "01010", 1671 => "01101", 
    1672 => "00000", 1673 => "00000", 1674 => "01001", 1675 => "10000", 
    1676 => "01010", 1677 => "00011", 1678 => "10000", 1679 => "01110", 
    1680 => "01111", 1681 => "00000", 1682 => "00000", 1683 => "00000", 
    1684 => "00001", 1685 => "10000", 1686 => "01000", 1687 => "01010", 
    1688 => "01110", 1689 => "01011", 1690 => "10000", 1691 => "00000", 
    1692 => "00000", 1693 => "00000", 1694 => "01000", 1695 => "10000", 
    1696 => "00110", 1697 => "00000", 1698 => "01001", 1699 => "00000", 
    1700 => "00100", 1701 => "00000", 1702 => "00000", 1703 => "00000", 
    1704 => "01110", 1705 => "00100", 1706 => "01010", 1707 => "00010", 
    1708 => "00000", 1709 => "10000", 1710 => "00010", 1711 => "00010", 
    1712 => "01011", 1713 => "00000", 1714 => "10000", 1715 => "00011", 
    1716 => "00000", 1717 => "00010", 1718 => "01110", 1719 => "01010", 
    1720 => "01000", 1721 => "01000", 1722 => "00110", 1723 => "10000", 
    1724 => "01000", 1725 => "00000", 1726 => "01011", 1727 => "00101", 
    1728 => "10000", 1729 => "01010", 1730 => "01001", 1731 => "00000", 
    1732 => "00001", 1733 => "00000", 1734 => "00000", 1735 => "01001", 
    1736 => "00111", 1737 => "10000", 1738 => "01000", 1739 => "00101", 
    1740 => "01110", 1741 => "00000", 1742 => "01111", 1743 => "10000", 
    1744 => "01110", 1745 => "00000", 1746 => "01011", 1747 => "10000", 
    1748 => "10000", 1749 => "00000", 1750 => "01110", 1751 => "01011", 
    1752 => "10000", 1753 => "10000", 1754 => "01010", 1755 => "00001", 
    1756 => "01110", 1757 => "10000", 1758 => "10000", 1759 => "00110", 
    1760 => "10000", 1761 => "00101", 1762 => "00000", 1763 => "01011", 
    1764 => "00001", 1765 => "01010", 1766 => "10000", 1767 => "01001", 
    1768 => "00001", 1769 => "00000", 1770 => "01111", 1771 => "01000", 
    1772 => "01100", 1773 => "00000", 1774 => "10000", 1775 => "01111", 
    1776 => "00000", 1777 => "01010", 1778 => "01001", 1779 => "00010", 
    1780 => "01110", 1781 => "10000", 1782 => "10000", 1783 => "01100", 
    1784 => "00000", 1785 => "10000", 1786 => "10000", 1787 => "00100", 
    1788 => "00110", 1789 => "10000", 1790 => "10000", 1791 => "00011", 
    1792 => "00011", 1793 => "00000", 1794 => "01010", 1795 => "00011", 
    1796 => "01000");



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

