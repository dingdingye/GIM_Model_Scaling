-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity top_digits_features_9_2_0_ROM_AUTO_1R is 
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


architecture rtl of top_digits_features_9_2_0_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00000", 1 => "10000", 2 => "01101", 3 => "00001", 
    4 => "01010", 5 => "00100", 6 => "01100", 7 => "01111", 
    8 => "10000", 9 => "10000", 10 => "00100", 11 => "01110", 
    12 => "00000", 13 => "00010", 14 => "01101", 15 => "00110", 
    16 => "10000", 17 => "10000", 18 => "01101", 19 => "00000", 
    20 => "00001", 21 => "01010", 22 => "01001", 23 => "00000", 
    24 => "01010", 25 => "10000", 26 => "01110", 27 => "10000", 
    28 => "10000", 29 => "00000", 30 => "00000", 31 => "00000", 
    32 => "00100", 33 => "00101", 34 => "10000", 35 => "00110", 
    36 => "00011", 37 => "00100", 38 => "10000", 39 => "00000", 
    40 => "10000", 41 => "01011", 42 => "00101", 43 => "01111", 
    44 => "10000", 45 => "00000", 46 => "01110", 47 => "00011", 
    48 => "00011", 49 => "00000", 50 => "01011", 51 => "00110", 
    52 => "10000", 53 => "01001", 54 => "01100", 55 => "00110", 
    56 => "00100", 57 => "01100", 58 => "01111", 59 => "00100", 
    60 => "00000", 61 => "10000", 62 => "00000", 63 => "00011", 
    64 => "01000", 65 => "01111", 66 => "01100", 67 => "00010", 
    68 => "01111", 69 => "01100", 70 => "00110", 71 => "00101", 
    72 => "00010", 73 => "00000", 74 => "10000", 75 => "00011", 
    76 => "10000", 77 => "01011", 78 => "00000", 79 => "00000", 
    80 => "01000", 81 => "10000", 82 => "01101", 83 => "00000", 
    84 => "10000", 85 => "01100", 86 => "10000", 87 => "10000", 
    88 => "10000", 89 => "00000", 90 => "01000", 91 => "00100", 
    92 => "00000", 93 => "01110", 94 => "10000", 95 => "10000", 
    96 => "10000", 97 => "01011", 98 => "00000", 99 => "10000", 
    100 => "00010", 101 => "00000", 102 => "10000", 103 => "00111", 
    104 => "10000", 105 => "00000", 106 => "01101", 107 => "00111", 
    108 => "10000", 109 => "10000", 110 => "01111", 111 => "01100", 
    112 => "10000", 113 => "01101", 114 => "10000", 115 => "01001", 
    116 => "01001", 117 => "01101", 118 => "10000", 119 => "00000", 
    120 => "01000", 121 => "10000", 122 => "10000", 123 => "10000", 
    124 => "01000", 125 => "00000", 126 => "00100", 127 => "01100", 
    128 => "00000", 129 => "10000", 130 => "00000", 131 => "00000", 
    132 => "10000", 133 => "00000", 134 => "10000", 135 => "10000", 
    136 => "10000", 137 => "01100", 138 => "10000", 139 => "00000", 
    140 => "00000", 141 => "00011", 142 => "10000", 143 => "00000", 
    144 => "10000", 145 => "01110", 146 => "01110", 147 => "10000", 
    148 => "10000", 149 => "00000", 150 => "00101", 151 => "00011", 
    152 => "00111", 153 => "00100", 154 => "01110", 155 => "00110", 
    156 => "10000", 157 => "10000", 158 => "01101", 159 => "00000", 
    160 => "00001", 161 => "00000", 162 => "10000", 163 => "01111", 
    164 => "01000", 165 => "10000", 166 => "00001", 167 => "00011", 
    168 => "10000", 169 => "00000", 170 => "01111", 171 => "01111", 
    172 => "00111", 173 => "10000", 174 => "10000", 175 => "00111", 
    176 => "10000", 177 => "00011", 178 => "00100", 179 => "00101", 
    180 => "01111", 181 => "01111", 182 => "10000", 183 => "01110", 
    184 => "10000", 185 => "00100", 186 => "01011", 187 => "01111", 
    188 => "01100", 189 => "00000", 190 => "00000", 191 => "10000", 
    192 => "00000", 193 => "00001", 194 => "00000", 195 => "10000", 
    196 => "01010", 197 => "01100", 198 => "10000", 199 => "01000", 
    200 => "01100", 201 => "10000", 202 => "00000", 203 => "00000", 
    204 => "01001", 205 => "00011", 206 => "10000", 207 => "01100", 
    208 => "00100", 209 => "00100", 210 => "01000", 211 => "10000", 
    212 => "00111", 213 => "00011", 214 => "10000", 215 => "10000", 
    216 => "10000", 217 => "00011", 218 => "00111", 219 => "00101", 
    220 => "00111", 221 => "10000", 222 => "10000", 223 => "10000", 
    224 => "01100", 225 => "10000", 226 => "00011", 227 => "01110", 
    228 => "10000", 229 => "00000", 230 => "10000", 231 => "00001", 
    232 => "10000", 233 => "00000", 234 => "01000", 235 => "10000", 
    236 => "10000", 237 => "10000", 238 => "01110", 239 => "10000", 
    240 => "10000", 241 => "10000", 242 => "10000", 243 => "10000", 
    244 => "01111", 245 => "10000", 246 => "10000", 247 => "01110", 
    248 => "10000", 249 => "01111", 250 => "10000", 251 => "10000", 
    252 => "00001", 253 => "10000", 254 => "01010", 255 => "10000", 
    256 => "00000", 257 => "10000", 258 => "01101", 259 => "00011", 
    260 => "10000", 261 => "00000", 262 => "01110", 263 => "10000", 
    264 => "01111", 265 => "00010", 266 => "00000", 267 => "10000", 
    268 => "01111", 269 => "01001", 270 => "10000", 271 => "01110", 
    272 => "01101", 273 => "10000", 274 => "10000", 275 => "01100", 
    276 => "00000", 277 => "10000", 278 => "10000", 279 => "00011", 
    280 => "01001", 281 => "00100", 282 => "00111", 283 => "01101", 
    284 => "10000", 285 => "00011", 286 => "00000", 287 => "00000", 
    288 => "00000", 289 => "01000", 290 => "01100", 291 => "00100", 
    292 => "00000", 293 => "00100", 294 => "01111", 295 => "00100", 
    296 => "01111", 297 => "00010", 298 => "10000", 299 => "10000", 
    300 => "01111", 301 => "01011", 302 => "00000", 303 => "10000", 
    304 => "00101", 305 => "00000", 306 => "10000", 307 => "10000", 
    308 => "10000", 309 => "01001", 310 => "01100", 311 => "00000", 
    312 => "10000", 313 => "10000", 314 => "10000", 315 => "10000", 
    316 => "00011", 317 => "10000", 318 => "00111", 319 => "01011", 
    320 => "01100", 321 => "00101", 322 => "01010", 323 => "01100", 
    324 => "00110", 325 => "00001", 326 => "10000", 327 => "00101", 
    328 => "00001", 329 => "00101", 330 => "00000", 331 => "01111", 
    332 => "10000", 333 => "01111", 334 => "00000", 335 => "00000", 
    336 => "10000", 337 => "10000", 338 => "01100", 339 => "01011", 
    340 => "10000", 341 => "10000", 342 => "01101", 343 => "10000", 
    344 => "01111", 345 => "01000", 346 => "10000", 347 => "10000", 
    348 => "00100", 349 => "10000", 350 => "01110", 351 => "10000", 
    352 => "10000", 353 => "00100", 354 => "10000", 355 => "01100", 
    356 => "10000", 357 => "00000", 358 => "00000", 359 => "00011", 
    360 => "01010", 361 => "00000", 362 => "00000", 363 => "10000", 
    364 => "01110", 365 => "00110", 366 => "00000", 367 => "01100", 
    368 => "01110", 369 => "01101", 370 => "10000", 371 => "10000", 
    372 => "01110", 373 => "00010", 374 => "01100", 375 => "00100", 
    376 => "10000", 377 => "01000", 378 => "00111", 379 => "01110", 
    380 => "01110", 381 => "00111", 382 => "00000", 383 => "10000", 
    384 => "01000", 385 => "00111", 386 => "00000", 387 => "00000", 
    388 => "01000", 389 => "01000", 390 => "00000", 391 => "00000", 
    392 => "10000", 393 => "00000", 394 => "01110", 395 => "00000", 
    396 => "00000", 397 => "01000", 398 => "00000", 399 => "00011", 
    400 => "00111", 401 => "01000", 402 => "10000", 403 => "00000", 
    404 => "01111", 405 => "00111", 406 => "00000", 407 => "01010", 
    408 => "00101", 409 => "00000", 410 => "01000", 411 => "00110", 
    412 => "10000", 413 => "00000", 414 => "10000", 415 => "01000", 
    416 => "00000", 417 => "10000", 418 => "00000", 419 => "00110", 
    420 => "01011", 421 => "00000", 422 => "00000", 423 => "10000", 
    424 => "10000", 425 => "00100", 426 => "01111", 427 => "01101", 
    428 => "00011", 429 => "00000", 430 => "01000", 431 => "01000", 
    432 => "00010", 433 => "00110", 434 => "00010", 435 => "00000", 
    436 => "00100", 437 => "00010", 438 => "00000", 439 => "00110", 
    440 => "00000", 441 => "00000", 442 => "00110", 443 => "00000", 
    444 => "10000", 445 => "00111", 446 => "01011", 447 => "00000", 
    448 => "00100", 449 => "00100", 450 => "00101", 451 => "10000", 
    452 => "10000", 453 => "10000", 454 => "01001", 455 => "00110", 
    456 => "01000", 457 => "00010", 458 => "00000", 459 => "01111", 
    460 => "01000", 461 => "00010", 462 => "01111", 463 => "01001", 
    464 => "00000", 465 => "00000", 466 => "01010", 467 => "00000", 
    468 => "01110", 469 => "00111", 470 => "01011", 471 => "10000", 
    472 => "00010", 473 => "01001", 474 => "01110", 475 => "00011", 
    476 => "00111", 477 => "01010", 478 => "01001", 479 => "01010", 
    480 => "00000", 481 => "01101", 482 => "01010", 483 => "00000", 
    484 => "01100", 485 => "01011", 486 => "01001", 487 => "00000", 
    488 => "00000", 489 => "00000", 490 => "01111", 491 => "10000", 
    492 => "10000", 493 => "01000", 494 => "00000", 495 => "01010", 
    496 => "10000", 497 => "01100", 498 => "00000", 499 => "01011", 
    500 => "10000", 501 => "00101", 502 => "00110", 503 => "01011", 
    504 => "00010", 505 => "00111", 506 => "01110", 507 => "01011", 
    508 => "01110", 509 => "10000", 510 => "00100", 511 => "00000", 
    512 => "00000", 513 => "10000", 514 => "01010", 515 => "10000", 
    516 => "00000", 517 => "10000", 518 => "00001", 519 => "00000", 
    520 => "01011", 521 => "00110", 522 => "10000", 523 => "01110", 
    524 => "01000", 525 => "10000", 526 => "00000", 527 => "01010", 
    528 => "01011", 529 => "00010", 530 => "10000", 531 => "00110", 
    532 => "10000", 533 => "10000", 534 => "10000", 535 => "01100", 
    536 => "00000", 537 => "10000", 538 => "00010", 539 => "01010", 
    540 => "00100", 541 => "00000", 542 => "10000", 543 => "01101", 
    544 => "10000", 545 => "01100", 546 => "00000", 547 => "00111", 
    548 => "00000", 549 => "00000", 550 => "10000", 551 => "00000", 
    552 => "00000", 553 => "00000", 554 => "01100", 555 => "01111", 
    556 => "10000", 557 => "00011", 558 => "10000", 559 => "10000", 
    560 => "10000", 561 => "00000", 562 => "00000", 563 => "10000", 
    564 => "00000", 565 => "00000", 566 => "00101", 567 => "00110", 
    568 => "10000", 569 => "01100", 570 => "00001", 571 => "00000", 
    572 => "10000", 573 => "00101", 574 => "00011", 575 => "00000", 
    576 => "00000", 577 => "10000", 578 => "00111", 579 => "00010", 
    580 => "01001", 581 => "01110", 582 => "10000", 583 => "01100", 
    584 => "01110", 585 => "00011", 586 => "01111", 587 => "00000", 
    588 => "00000", 589 => "00100", 590 => "01000", 591 => "00001", 
    592 => "01110", 593 => "01010", 594 => "00000", 595 => "00000", 
    596 => "10000", 597 => "10000", 598 => "01101", 599 => "00010", 
    600 => "10000", 601 => "01111", 602 => "01101", 603 => "01100", 
    604 => "10000", 605 => "01010", 606 => "01111", 607 => "00101", 
    608 => "01111", 609 => "10000", 610 => "10000", 611 => "01101", 
    612 => "10000", 613 => "00101", 614 => "00000", 615 => "10000", 
    616 => "01000", 617 => "00000", 618 => "00000", 619 => "00110", 
    620 => "10000", 621 => "01111", 622 => "01000", 623 => "01111", 
    624 => "10000", 625 => "00011", 626 => "00001", 627 => "00101", 
    628 => "10000", 629 => "01001", 630 => "10000", 631 => "01000", 
    632 => "00010", 633 => "00101", 634 => "10000", 635 => "00100", 
    636 => "00110", 637 => "01100", 638 => "01100", 639 => "01110", 
    640 => "01001", 641 => "00011", 642 => "00000", 643 => "10000", 
    644 => "01000", 645 => "01111", 646 => "00000", 647 => "10000", 
    648 => "10000", 649 => "01010", 650 => "10000", 651 => "01110", 
    652 => "00110", 653 => "10000", 654 => "10000", 655 => "01000", 
    656 => "00000", 657 => "10000", 658 => "01110", 659 => "00001", 
    660 => "01100", 661 => "10000", 662 => "00010", 663 => "10000", 
    664 => "01100", 665 => "01110", 666 => "00101", 667 => "10000", 
    668 => "01001", 669 => "01111", 670 => "01111", 671 => "01111", 
    672 => "01001", 673 => "10000", 674 => "10000", 675 => "00011", 
    676 => "00000", 677 => "10000", 678 => "01111", 679 => "10000", 
    680 => "01011", 681 => "10000", 682 => "00000", 683 => "00111", 
    684 => "10000", 685 => "01010", 686 => "10000", 687 => "10000", 
    688 => "10000", 689 => "10000", 690 => "10000", 691 => "00000", 
    692 => "10000", 693 => "10000", 694 => "00000", 695 => "00000", 
    696 => "00110", 697 => "01011", 698 => "10000", 699 => "10000", 
    700 => "01011", 701 => "00000", 702 => "01111", 703 => "00100", 
    704 => "00000", 705 => "00000", 706 => "00101", 707 => "10000", 
    708 => "00001", 709 => "01101", 710 => "10000", 711 => "01100", 
    712 => "10000", 713 => "01000", 714 => "01001", 715 => "01001", 
    716 => "10000", 717 => "10000", 718 => "00000", 719 => "01011", 
    720 => "10000", 721 => "01000", 722 => "01111", 723 => "10000", 
    724 => "00000", 725 => "00000", 726 => "01110", 727 => "10000", 
    728 => "00110", 729 => "00001", 730 => "01101", 731 => "10000", 
    732 => "10000", 733 => "01000", 734 => "00111", 735 => "00000", 
    736 => "10000", 737 => "10000", 738 => "01000", 739 => "10000", 
    740 => "10000", 741 => "01110", 742 => "10000", 743 => "01100", 
    744 => "10000", 745 => "10000", 746 => "10000", 747 => "00000", 
    748 => "10000", 749 => "10000", 750 => "00111", 751 => "10000", 
    752 => "01000", 753 => "10000", 754 => "10000", 755 => "10000", 
    756 => "00010", 757 => "10000", 758 => "10000", 759 => "10000", 
    760 => "10000", 761 => "10000", 762 => "01110", 763 => "10000", 
    764 => "01111", 765 => "01010", 766 => "00011", 767 => "00000", 
    768 => "10000", 769 => "01111", 770 => "10000", 771 => "01000", 
    772 => "00000", 773 => "10000", 774 => "01001", 775 => "10000", 
    776 => "00000", 777 => "01111", 778 => "01111", 779 => "01111", 
    780 => "01000", 781 => "01010", 782 => "00010", 783 => "01101", 
    784 => "10000", 785 => "00000", 786 => "00000", 787 => "01001", 
    788 => "01110", 789 => "01100", 790 => "01101", 791 => "01111", 
    792 => "00111", 793 => "10000", 794 => "01111", 795 => "00110", 
    796 => "00000", 797 => "10000", 798 => "10000", 799 => "00111", 
    800 => "00100", 801 => "10000", 802 => "01011", 803 => "10000", 
    804 => "01101", 805 => "00111", 806 => "00000", 807 => "00000", 
    808 => "00110", 809 => "10000", 810 => "01100", 811 => "01100", 
    812 => "00000", 813 => "00111", 814 => "01011", 815 => "00000", 
    816 => "01000", 817 => "00100", 818 => "10000", 819 => "10000", 
    820 => "01111", 821 => "01111", 822 => "01110", 823 => "10000", 
    824 => "00001", 825 => "00000", 826 => "01010", 827 => "01100", 
    828 => "10000", 829 => "01001", 830 => "10000", 831 => "00010", 
    832 => "01110", 833 => "01110", 834 => "10000", 835 => "01111", 
    836 => "10000", 837 => "01111", 838 => "00111", 839 => "01111", 
    840 => "01000", 841 => "10000", 842 => "01110", 843 => "00100", 
    844 => "01000", 845 => "00000", 846 => "10000", 847 => "00101", 
    848 => "00000", 849 => "01011", 850 => "01011", 851 => "10000", 
    852 => "01100", 853 => "10000", 854 => "00100", 855 => "00000", 
    856 => "10000", 857 => "10000", 858 => "10000", 859 => "00101", 
    860 => "01010", 861 => "10000", 862 => "10000", 863 => "00000", 
    864 => "01010", 865 => "00111", 866 => "10000", 867 => "00101", 
    868 => "00000", 869 => "10000", 870 => "10000", 871 => "01010", 
    872 => "10000", 873 => "00000", 874 => "01000", 875 => "10000", 
    876 => "00000", 877 => "00000", 878 => "01100", 879 => "00101", 
    880 => "10000", 881 => "00010", 882 => "01000", 883 => "10000", 
    884 => "10000", 885 => "10000", 886 => "00010", 887 => "10000", 
    888 => "10000", 889 => "10000", 890 => "01100", 891 => "00001", 
    892 => "01111", 893 => "00011", 894 => "01001", 895 => "00000", 
    896 => "10000", 897 => "00001", 898 => "01100", 899 => "01010", 
    900 => "00001", 901 => "00000", 902 => "00000", 903 => "01110", 
    904 => "00000", 905 => "10000", 906 => "01110", 907 => "01111", 
    908 => "00000", 909 => "01100", 910 => "00011", 911 => "00101", 
    912 => "01001", 913 => "01101", 914 => "00000", 915 => "00000", 
    916 => "01110", 917 => "01111", 918 => "00000", 919 => "01010", 
    920 => "00000", 921 => "00100", 922 => "00111", 923 => "01110", 
    924 => "00100", 925 => "00000", 926 => "01111", 927 => "01010", 
    928 => "00100", 929 => "10000", 930 => "00100", 931 => "01011", 
    932 => "00111", 933 => "10000", 934 => "00100", 935 => "00000", 
    936 => "00000", 937 => "00000", 938 => "00000", 939 => "01111", 
    940 => "00000", 941 => "00000", 942 => "01000", 943 => "10000", 
    944 => "00000", 945 => "01110", 946 => "10000", 947 => "00111", 
    948 => "01101", 949 => "01000", 950 => "00001", 951 => "00000", 
    952 => "00101", 953 => "00110", 954 => "01010", 955 => "01110", 
    956 => "00000", 957 => "00000", 958 => "00110", 959 => "00101", 
    960 => "00101", 961 => "00100", 962 => "00000", 963 => "00101", 
    964 => "00000", 965 => "00010", 966 => "10000", 967 => "10000", 
    968 => "10000", 969 => "01100", 970 => "10000", 971 => "00001", 
    972 => "01001", 973 => "00000", 974 => "00000", 975 => "00011", 
    976 => "00000", 977 => "00000", 978 => "01111", 979 => "00100", 
    980 => "00000", 981 => "00000", 982 => "00010", 983 => "10000", 
    984 => "01011", 985 => "00010", 986 => "01010", 987 => "01101", 
    988 => "00011", 989 => "10000", 990 => "00000", 991 => "00110", 
    992 => "00001", 993 => "00111", 994 => "00110", 995 => "01000", 
    996 => "10000", 997 => "00110", 998 => "01101", 999 => "01010", 
    1000 => "00011", 1001 => "10000", 1002 => "00010", 1003 => "00000", 
    1004 => "00000", 1005 => "10000", 1006 => "00000", 1007 => "01111", 
    1008 => "00111", 1009 => "01100", 1010 => "00000", 1011 => "01101", 
    1012 => "10000", 1013 => "10000", 1014 => "00011", 1015 => "01101", 
    1016 => "00000", 1017 => "01010", 1018 => "00000", 1019 => "10000", 
    1020 => "00000", 1021 => "00100", 1022 => "01010", 1023 => "10000", 
    1024 => "01100", 1025 => "00000", 1026 => "01100", 1027 => "01000", 
    1028 => "10000", 1029 => "00000", 1030 => "10000", 1031 => "01111", 
    1032 => "00000", 1033 => "10000", 1034 => "01000", 1035 => "10000", 
    1036 => "10000", 1037 => "01110", 1038 => "01000", 1039 => "00001", 
    1040 => "10000", 1041 => "01010", 1042 => "00001", 1043 => "01100", 
    1044 => "00000", 1045 => "01111", 1046 => "01101", 1047 => "01110", 
    1048 => "01100", 1049 => "00000", 1050 => "10000", 1051 => "00000", 
    1052 => "00100", 1053 => "10000", 1054 => "00001", 1055 => "01100", 
    1056 => "01110", 1057 => "01101", 1058 => "00111", 1059 => "00000", 
    1060 => "10000", 1061 => "00110", 1062 => "00100", 1063 => "01111", 
    1064 => "00101", 1065 => "00000", 1066 => "01000", 1067 => "10000", 
    1068 => "01010", 1069 => "01111", 1070 => "01101", 1071 => "10000", 
    1072 => "01011", 1073 => "01001", 1074 => "00010", 1075 => "00100", 
    1076 => "10000", 1077 => "00000", 1078 => "00000", 1079 => "01110", 
    1080 => "01110", 1081 => "00001", 1082 => "00000", 1083 => "10000", 
    1084 => "00000", 1085 => "01110", 1086 => "00000", 1087 => "00001", 
    1088 => "10000", 1089 => "00000", 1090 => "00101", 1091 => "10000", 
    1092 => "00111", 1093 => "10000", 1094 => "01100", 1095 => "01001", 
    1096 => "01010", 1097 => "10000", 1098 => "00010", 1099 => "00000", 
    1100 => "01111", 1101 => "01011", 1102 => "00000", 1103 => "01110", 
    1104 => "00000", 1105 => "00000", 1106 => "00000", 1107 => "10000", 
    1108 => "10000", 1109 => "01011", 1110 => "00100", 1111 => "00100", 
    1112 => "10000", 1113 => "10000", 1114 => "01101", 1115 => "00101", 
    1116 => "00000", 1117 => "10000", 1118 => "10000", 1119 => "01100", 
    1120 => "10000", 1121 => "10000", 1122 => "01111", 1123 => "01110", 
    1124 => "10000", 1125 => "00001", 1126 => "10000", 1127 => "01100", 
    1128 => "00000", 1129 => "10000", 1130 => "00010", 1131 => "01001", 
    1132 => "00100", 1133 => "01111", 1134 => "10000", 1135 => "10000", 
    1136 => "00111", 1137 => "01100", 1138 => "01110", 1139 => "10000", 
    1140 => "00100", 1141 => "01110", 1142 => "00111", 1143 => "00000", 
    1144 => "01000", 1145 => "01111", 1146 => "00101", 1147 => "01101", 
    1148 => "01110", 1149 => "01011", 1150 => "01110", 1151 => "10000", 
    1152 => "01110", 1153 => "00000", 1154 => "01111", 1155 => "00100", 
    1156 => "01110", 1157 => "00000", 1158 => "00110", 1159 => "10000", 
    1160 => "00001", 1161 => "01011", 1162 => "01100", 1163 => "01100", 
    1164 => "01101", 1165 => "01111", 1166 => "01011", 1167 => "00000", 
    1168 => "00111", 1169 => "01001", 1170 => "00010", 1171 => "00100", 
    1172 => "10000", 1173 => "01010", 1174 => "10000", 1175 => "10000", 
    1176 => "00011", 1177 => "00000", 1178 => "01111", 1179 => "01101", 
    1180 => "00000", 1181 => "00101", 1182 => "10000", 1183 => "01010", 
    1184 => "01110", 1185 => "10000", 1186 => "10000", 1187 => "00000", 
    1188 => "01000", 1189 => "00100", 1190 => "00111", 1191 => "10000", 
    1192 => "00111", 1193 => "00000", 1194 => "01000", 1195 => "10000", 
    1196 => "00111", 1197 => "01010", 1198 => "00100", 1199 => "10000", 
    1200 => "10000", 1201 => "01111", 1202 => "10000", 1203 => "10000", 
    1204 => "00111", 1205 => "00000", 1206 => "00000", 1207 => "01000", 
    1208 => "01101", 1209 => "10000", 1210 => "10000", 1211 => "10000", 
    1212 => "00000", 1213 => "10000", 1214 => "01111", 1215 => "01100", 
    1216 => "00000", 1217 => "00111", 1218 => "01011", 1219 => "00000", 
    1220 => "00000", 1221 => "00000", 1222 => "10000", 1223 => "10000", 
    1224 => "01110", 1225 => "01100", 1226 => "01010", 1227 => "10000", 
    1228 => "01110", 1229 => "00000", 1230 => "01010", 1231 => "01100", 
    1232 => "01011", 1233 => "01110", 1234 => "01010", 1235 => "00000", 
    1236 => "00000", 1237 => "10000", 1238 => "01111", 1239 => "10000", 
    1240 => "00111", 1241 => "01100", 1242 => "01011", 1243 => "01111", 
    1244 => "00111", 1245 => "10000", 1246 => "00000", 1247 => "10000", 
    1248 => "01011", 1249 => "00100", 1250 => "10000", 1251 => "10000", 
    1252 => "10000", 1253 => "01101", 1254 => "01000", 1255 => "00010", 
    1256 => "10000", 1257 => "00000", 1258 => "00010", 1259 => "10000", 
    1260 => "01000", 1261 => "01110", 1262 => "00100", 1263 => "01111", 
    1264 => "10000", 1265 => "01110", 1266 => "01110", 1267 => "00000", 
    1268 => "01000", 1269 => "01101", 1270 => "01110", 1271 => "10000", 
    1272 => "01110", 1273 => "01101", 1274 => "00000", 1275 => "00110", 
    1276 => "01011", 1277 => "01111", 1278 => "01000", 1279 => "10000", 
    1280 => "01110", 1281 => "01001", 1282 => "00000", 1283 => "00000", 
    1284 => "10000", 1285 => "00111", 1286 => "10000", 1287 => "00000", 
    1288 => "00000", 1289 => "00000", 1290 => "00100", 1291 => "00001", 
    1292 => "01000", 1293 => "10000", 1294 => "10000", 1295 => "10000", 
    1296 => "01011", 1297 => "00000", 1298 => "01010", 1299 => "00000", 
    1300 => "00000", 1301 => "00000", 1302 => "01000", 1303 => "10000", 
    1304 => "01111", 1305 => "10000", 1306 => "00000", 1307 => "00000", 
    1308 => "00010", 1309 => "00000", 1310 => "00110", 1311 => "00010", 
    1312 => "01100", 1313 => "10000", 1314 => "01101", 1315 => "10000", 
    1316 => "00000", 1317 => "00000", 1318 => "00000", 1319 => "01101", 
    1320 => "10000", 1321 => "01111", 1322 => "00001", 1323 => "00111", 
    1324 => "01000", 1325 => "10000", 1326 => "01011", 1327 => "10000", 
    1328 => "00000", 1329 => "10000", 1330 => "01001", 1331 => "00101", 
    1332 => "01000", 1333 => "01010", 1334 => "10000", 1335 => "00000", 
    1336 => "00000", 1337 => "00000", 1338 => "00000", 1339 => "10000", 
    1340 => "10000", 1341 => "00000", 1342 => "00000", 1343 => "00000", 
    1344 => "00000", 1345 => "01111", 1346 => "00111", 1347 => "00000", 
    1348 => "01011", 1349 => "00001", 1350 => "00000", 1351 => "00010", 
    1352 => "10000", 1353 => "01111", 1354 => "01111", 1355 => "00001", 
    1356 => "00000", 1357 => "10000", 1358 => "01100", 1359 => "00000", 
    1360 => "00011", 1361 => "10000", 1362 => "00010", 1363 => "10000", 
    1364 => "00000", 1365 => "00000", 1366 => "00000", 1367 => "00000", 
    1368 => "01100", 1369 => "10000", 1370 => "00111", 1371 => "00000", 
    1372 => "01111", 1373 => "10000", 1374 => "00000", 1375 => "10000", 
    1376 => "00111", 1377 => "01100", 1378 => "01111", 1379 => "00100", 
    1380 => "10000", 1381 => "10000", 1382 => "10000", 1383 => "10000", 
    1384 => "00001", 1385 => "00000", 1386 => "10000", 1387 => "01000", 
    1388 => "00000", 1389 => "10000", 1390 => "01011", 1391 => "01011", 
    1392 => "00001", 1393 => "01110", 1394 => "10000", 1395 => "10000", 
    1396 => "00100", 1397 => "01000", 1398 => "00111", 1399 => "10000", 
    1400 => "00000", 1401 => "01110", 1402 => "00000", 1403 => "00000", 
    1404 => "01100", 1405 => "01101", 1406 => "00100", 1407 => "00000", 
    1408 => "01110", 1409 => "10000", 1410 => "10000", 1411 => "00000", 
    1412 => "00000", 1413 => "01011", 1414 => "01100", 1415 => "00000", 
    1416 => "00000", 1417 => "01100", 1418 => "00101", 1419 => "01001", 
    1420 => "00100", 1421 => "01110", 1422 => "01111", 1423 => "00111", 
    1424 => "00000", 1425 => "00000", 1426 => "00000", 1427 => "01111", 
    1428 => "00011", 1429 => "00110", 1430 => "00100", 1431 => "01100", 
    1432 => "01100", 1433 => "01101", 1434 => "00000", 1435 => "00000", 
    1436 => "00000", 1437 => "01101", 1438 => "01010", 1439 => "01100", 
    1440 => "00101", 1441 => "10000", 1442 => "01101", 1443 => "01110", 
    1444 => "00000", 1445 => "00000", 1446 => "00000", 1447 => "00100", 
    1448 => "00100", 1449 => "10000", 1450 => "00100", 1451 => "00000", 
    1452 => "00000", 1453 => "01110", 1454 => "00000", 1455 => "01011", 
    1456 => "01011", 1457 => "00000", 1458 => "10000", 1459 => "01011", 
    1460 => "01010", 1461 => "00000", 1462 => "00000", 1463 => "00000", 
    1464 => "00000", 1465 => "00101", 1466 => "01000", 1467 => "01011", 
    1468 => "01010", 1469 => "01000", 1470 => "00000", 1471 => "00000", 
    1472 => "01100", 1473 => "00100", 1474 => "01010", 1475 => "00101", 
    1476 => "01111", 1477 => "00000", 1478 => "00010", 1479 => "00110", 
    1480 => "10000", 1481 => "01001", 1482 => "10000", 1483 => "01000", 
    1484 => "00000", 1485 => "00000", 1486 => "00111", 1487 => "00000", 
    1488 => "00000", 1489 => "01100", 1490 => "01011", 1491 => "00000", 
    1492 => "01010", 1493 => "00000", 1494 => "00000", 1495 => "00000", 
    1496 => "01101", 1497 => "01011", 1498 => "00010", 1499 => "10000", 
    1500 => "00000", 1501 => "01011", 1502 => "00110", 1503 => "01100", 
    1504 => "01011", 1505 => "00000", 1506 => "01010", 1507 => "00000", 
    1508 => "00000", 1509 => "01101", 1510 => "01110", 1511 => "00100", 
    1512 => "01110", 1513 => "00110", 1514 => "00000", 1515 => "01000", 
    1516 => "00000", 1517 => "00000", 1518 => "01000", 1519 => "10000", 
    1520 => "00000", 1521 => "10000", 1522 => "00000", 1523 => "00101", 
    1524 => "00000", 1525 => "01000", 1526 => "10000", 1527 => "01010", 
    1528 => "01001", 1529 => "00110", 1530 => "00011", 1531 => "01100", 
    1532 => "01000", 1533 => "01010", 1534 => "00000", 1535 => "00111", 
    1536 => "01001", 1537 => "01101", 1538 => "01110", 1539 => "01101", 
    1540 => "00000", 1541 => "00000", 1542 => "01011", 1543 => "00000", 
    1544 => "01111", 1545 => "00100", 1546 => "01111", 1547 => "00110", 
    1548 => "00010", 1549 => "10000", 1550 => "01011", 1551 => "10000", 
    1552 => "10000", 1553 => "00110", 1554 => "00111", 1555 => "00110", 
    1556 => "10000", 1557 => "00000", 1558 => "00000", 1559 => "10000", 
    1560 => "10000", 1561 => "10000", 1562 => "00000", 1563 => "00101", 
    1564 => "10000", 1565 => "00010", 1566 => "00101", 1567 => "01110", 
    1568 => "01001", 1569 => "01110", 1570 => "01100", 1571 => "00110", 
    1572 => "00000", 1573 => "01011", 1574 => "00000", 1575 => "00110", 
    1576 => "10000", 1577 => "10000", 1578 => "01110", 1579 => "00001", 
    1580 => "01010", 1581 => "10000", 1582 => "01000", 1583 => "01100", 
    1584 => "01000", 1585 => "01010", 1586 => "10000", 1587 => "10000", 
    1588 => "01100", 1589 => "01001", 1590 => "10000", 1591 => "01010", 
    1592 => "00001", 1593 => "00000", 1594 => "00100", 1595 => "01111", 
    1596 => "10000", 1597 => "00000", 1598 => "01000", 1599 => "10000", 
    1600 => "10000", 1601 => "10000", 1602 => "01111", 1603 => "01111", 
    1604 => "10000", 1605 => "01110", 1606 => "01111", 1607 => "10000", 
    1608 => "01110", 1609 => "01110", 1610 => "01110", 1611 => "01001", 
    1612 => "00000", 1613 => "10000", 1614 => "01111", 1615 => "01011", 
    1616 => "00000", 1617 => "01101", 1618 => "00000", 1619 => "10000", 
    1620 => "00000", 1621 => "10000", 1622 => "10000", 1623 => "10000", 
    1624 => "00010", 1625 => "01101", 1626 => "01101", 1627 => "10000", 
    1628 => "01110", 1629 => "10000", 1630 => "00000", 1631 => "01101", 
    1632 => "00010", 1633 => "01000", 1634 => "10000", 1635 => "10000", 
    1636 => "01000", 1637 => "01010", 1638 => "00100", 1639 => "00010", 
    1640 => "01101", 1641 => "01110", 1642 => "00000", 1643 => "01000", 
    1644 => "00000", 1645 => "10000", 1646 => "00000", 1647 => "10000", 
    1648 => "01010", 1649 => "10000", 1650 => "01011", 1651 => "10000", 
    1652 => "10000", 1653 => "10000", 1654 => "01110", 1655 => "00001", 
    1656 => "01101", 1657 => "10000", 1658 => "00011", 1659 => "01011", 
    1660 => "01111", 1661 => "01100", 1662 => "01100", 1663 => "00000", 
    1664 => "01011", 1665 => "01001", 1666 => "10000", 1667 => "00000", 
    1668 => "01101", 1669 => "00100", 1670 => "01011", 1671 => "01111", 
    1672 => "01001", 1673 => "10000", 1674 => "10000", 1675 => "01101", 
    1676 => "00100", 1677 => "00000", 1678 => "10000", 1679 => "10000", 
    1680 => "10000", 1681 => "00010", 1682 => "10000", 1683 => "10000", 
    1684 => "10000", 1685 => "01110", 1686 => "00100", 1687 => "00000", 
    1688 => "10000", 1689 => "00101", 1690 => "01011", 1691 => "00101", 
    1692 => "01110", 1693 => "10000", 1694 => "10000", 1695 => "01100", 
    1696 => "00000", 1697 => "00000", 1698 => "00000", 1699 => "01110", 
    1700 => "01001", 1701 => "10000", 1702 => "00101", 1703 => "00000", 
    1704 => "00000", 1705 => "10000", 1706 => "00000", 1707 => "10000", 
    1708 => "00110", 1709 => "10000", 1710 => "01001", 1711 => "10000", 
    1712 => "10000", 1713 => "01101", 1714 => "10000", 1715 => "00000", 
    1716 => "00000", 1717 => "01101", 1718 => "01011", 1719 => "10000", 
    1720 => "10000", 1721 => "01011", 1722 => "00000", 1723 => "10000", 
    1724 => "01010", 1725 => "10000", 1726 => "10000", 1727 => "10000", 
    1728 => "01010", 1729 => "01000", 1730 => "10000", 1731 => "10000", 
    1732 => "01011", 1733 => "10000", 1734 => "00010", 1735 => "01110", 
    1736 => "00100", 1737 => "10000", 1738 => "00001", 1739 => "00000", 
    1740 => "00010", 1741 => "01100", 1742 => "00011", 1743 => "01110", 
    1744 => "01010", 1745 => "00000", 1746 => "00000", 1747 => "10000", 
    1748 => "10000", 1749 => "01111", 1750 => "10000", 1751 => "00100", 
    1752 => "01110", 1753 => "10000", 1754 => "00101", 1755 => "01111", 
    1756 => "00101", 1757 => "10000", 1758 => "10000", 1759 => "00100", 
    1760 => "10000", 1761 => "10000", 1762 => "01001", 1763 => "10000", 
    1764 => "00000", 1765 => "01111", 1766 => "10000", 1767 => "10000", 
    1768 => "00111", 1769 => "00110", 1770 => "00101", 1771 => "10000", 
    1772 => "00100", 1773 => "10000", 1774 => "10000", 1775 => "10000", 
    1776 => "10000", 1777 => "01000", 1778 => "00110", 1779 => "10000", 
    1780 => "00111", 1781 => "01110", 1782 => "01011", 1783 => "01011", 
    1784 => "01011", 1785 => "10000", 1786 => "00000", 1787 => "00100", 
    1788 => "00110", 1789 => "10000", 1790 => "01111", 1791 => "01101", 
    1792 => "00100", 1793 => "00000", 1794 => "10000", 1795 => "01110", 
    1796 => "01111");



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

