-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity top_digits_features_11_3_0_ROM_AUTO_1R is 
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


architecture rtl of top_digits_features_11_3_0_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "01110", 1 => "00001", 2 => "01101", 3 => "01000", 
    4 => "00000", 5 => "00101", 6 => "00111", 7 => "01001", 
    8 => "01111", 9 => "00000", 10 => "01100", 11 => "00000", 
    12 => "01001", 13 => "00101", 14 => "00000", 15 => "00101", 
    16 => "00011", 17 => "00000", 18 => "01010", 19 => "00001", 
    20 => "01001", 21 => "00000", 22 => "01110", 23 => "00111", 
    24 => "00000", 25 => "00100", 26 => "01110", 27 => "00000", 
    28 => "01110", 29 => "00011", 30 => "10000", 31 => "00000", 
    32 => "00100", 33 => "01000", 34 => "00100", 35 => "00101", 
    36 => "10000", 37 => "00101", 38 => "01010", 39 => "01101", 
    40 => "01110", 41 => "00000", 42 => "00000", 43 => "00000", 
    44 => "01000", 45 => "00100", 46 => "00110", 47 => "00000", 
    48 => "01110", 49 => "01001", 50 => "01110", 51 => "01101", 
    52 => "00000", 53 => "10000", 54 => "00010", 55 => "01011", 
    56 => "00000", 57 => "01001", 58 => "00111", 59 => "00011", 
    60 => "01001", 61 => "00000", 62 => "00101", 63 => "01010", 
    64 => "00000", 65 => "01000", 66 => "00111", 67 => "01111", 
    68 => "00000", 69 => "00001", 70 => "00000", 71 => "00010", 
    72 => "01011", 73 => "00010", 74 => "00001", 75 => "01011", 
    76 => "10000", 77 => "01000", 78 => "01110", 79 => "01111", 
    80 => "00000", 81 => "00010", 82 => "01010", 83 => "00110", 
    84 => "10000", 85 => "00000", 86 => "00000", 87 => "00000", 
    88 => "00111", 89 => "00011", 90 => "00000", 91 => "01000", 
    92 => "01111", 93 => "00000", 94 => "00000", 95 => "01010", 
    96 => "01111", 97 => "00000", 98 => "01110", 99 => "00010", 
    100 => "00000", 101 => "01101", 102 => "00010", 103 => "00111", 
    104 => "01100", 105 => "00011", 106 => "00110", 107 => "00000", 
    108 => "00000", 109 => "00110", 110 => "00000", 111 => "00000", 
    112 => "00001", 113 => "10000", 114 => "01011", 115 => "01111", 
    116 => "01111", 117 => "01001", 118 => "00110", 119 => "00010", 
    120 => "00100", 121 => "00000", 122 => "01100", 123 => "01100", 
    124 => "00000", 125 => "01000", 126 => "01101", 127 => "01100", 
    128 => "10000", 129 => "01100", 130 => "01111", 131 => "00000", 
    132 => "10000", 133 => "00011", 134 => "00000", 135 => "01010", 
    136 => "01110", 137 => "00001", 138 => "01111", 139 => "00110", 
    140 => "01111", 141 => "00000", 142 => "10000", 143 => "00011", 
    144 => "00000", 145 => "01010", 146 => "01011", 147 => "00000", 
    148 => "01101", 149 => "00000", 150 => "01101", 151 => "00000", 
    152 => "01011", 153 => "00000", 154 => "00000", 155 => "01000", 
    156 => "01100", 157 => "00110", 158 => "01110", 159 => "00010", 
    160 => "10000", 161 => "00100", 162 => "00100", 163 => "00101", 
    164 => "01111", 165 => "01000", 166 => "01101", 167 => "01100", 
    168 => "10000", 169 => "00010", 170 => "01101", 171 => "00000", 
    172 => "00000", 173 => "00000", 174 => "00000", 175 => "00010", 
    176 => "00111", 177 => "00000", 178 => "10000", 179 => "01000", 
    180 => "01000", 181 => "10000", 182 => "00000", 183 => "10000", 
    184 => "10000", 185 => "01110", 186 => "00000", 187 => "01001", 
    188 => "10000", 189 => "00001", 190 => "00100", 191 => "01001", 
    192 => "00010", 193 => "00001", 194 => "00000", 195 => "01100", 
    196 => "01110", 197 => "01111", 198 => "01000", 199 => "00000", 
    200 => "00000", 201 => "00001", 202 => "01111", 203 => "00100", 
    204 => "00110", 205 => "00011", 206 => "10000", 207 => "01000", 
    208 => "01111", 209 => "01101", 210 => "00000", 211 => "00011", 
    212 => "01110", 213 => "00111", 214 => "01111", 215 => "00001", 
    216 => "00110", 217 => "00110", 218 => "00000", 219 => "00011", 
    220 => "00011", 221 => "00000", 222 => "00101", 223 => "00010", 
    224 => "01100", 225 => "00000", 226 => "00100", 227 => "00000", 
    228 => "00000", 229 => "10000", 230 => "00101", 231 => "00001", 
    232 => "01100", 233 => "00000", 234 => "01101", 235 => "00000", 
    236 => "00111", 237 => "01001", 238 => "01000", 239 => "00001", 
    240 => "00100", 241 => "10000", 242 => "01101", 243 => "10000", 
    244 => "01000", 245 => "00111", 246 => "00001", 247 => "00000", 
    248 => "10000", 249 => "01100", 250 => "00000", 251 => "00011", 
    252 => "01111", 253 => "01100", 254 => "01000", 255 => "01111", 
    256 => "10000", 257 => "01101", 258 => "01100", 259 => "01001", 
    260 => "00000", 261 => "01001", 262 => "01110", 263 => "00110", 
    264 => "01000", 265 => "00000", 266 => "01110", 267 => "00000", 
    268 => "01100", 269 => "00011", 270 => "00000", 271 => "01110", 
    272 => "01011", 273 => "00010", 274 => "01000", 275 => "00000", 
    276 => "01100", 277 => "01000", 278 => "10000", 279 => "00011", 
    280 => "00000", 281 => "01010", 282 => "01101", 283 => "00001", 
    284 => "01100", 285 => "01100", 286 => "01011", 287 => "01001", 
    288 => "00110", 289 => "00101", 290 => "01100", 291 => "00001", 
    292 => "10000", 293 => "01000", 294 => "01101", 295 => "01000", 
    296 => "01111", 297 => "00000", 298 => "01110", 299 => "00011", 
    300 => "00000", 301 => "00101", 302 => "00011", 303 => "01010", 
    304 => "01101", 305 => "10000", 306 => "01111", 307 => "01011", 
    308 => "00000", 309 => "01001", 310 => "01100", 311 => "01101", 
    312 => "00000", 313 => "10000", 314 => "01111", 315 => "00110", 
    316 => "00011", 317 => "00001", 318 => "00101", 319 => "00111", 
    320 => "00000", 321 => "01101", 322 => "01110", 323 => "01001", 
    324 => "00100", 325 => "00000", 326 => "01011", 327 => "00011", 
    328 => "01110", 329 => "00000", 330 => "00110", 331 => "10000", 
    332 => "01011", 333 => "10000", 334 => "01111", 335 => "01101", 
    336 => "01000", 337 => "00000", 338 => "00111", 339 => "00100", 
    340 => "10000", 341 => "01100", 342 => "00011", 343 => "00000", 
    344 => "10000", 345 => "00100", 346 => "01000", 347 => "01000", 
    348 => "00000", 349 => "00100", 350 => "00110", 351 => "01010", 
    352 => "10000", 353 => "00110", 354 => "01011", 355 => "00101", 
    356 => "00000", 357 => "01101", 358 => "00000", 359 => "01000", 
    360 => "01101", 361 => "00001", 362 => "01010", 363 => "10000", 
    364 => "00110", 365 => "00001", 366 => "01011", 367 => "00000", 
    368 => "00011", 369 => "10000", 370 => "10000", 371 => "10000", 
    372 => "10000", 373 => "00010", 374 => "00010", 375 => "00000", 
    376 => "01010", 377 => "00001", 378 => "01011", 379 => "01011", 
    380 => "00000", 381 => "00000", 382 => "01101", 383 => "01011", 
    384 => "00000", 385 => "00111", 386 => "10000", 387 => "00000", 
    388 => "01011", 389 => "10000", 390 => "01000", 391 => "01110", 
    392 => "01001", 393 => "00000", 394 => "01001", 395 => "10000", 
    396 => "01111", 397 => "00000", 398 => "00111", 399 => "10000", 
    400 => "00000", 401 => "01111", 402 => "01100", 403 => "00000", 
    404 => "01011", 405 => "01111", 406 => "01010", 407 => "00000", 
    408 => "01010", 409 => "01110", 410 => "00000", 411 => "01100", 
    412 => "01011", 413 => "00000", 414 => "00011", 415 => "10000", 
    416 => "01111", 417 => "01111", 418 => "10000", 419 => "10000", 
    420 => "01010", 421 => "01111", 422 => "01101", 423 => "01110", 
    424 => "10000", 425 => "01100", 426 => "01011", 427 => "00000", 
    428 => "00000", 429 => "00000", 430 => "00110", 431 => "10000", 
    432 => "01000", 433 => "00000", 434 => "01110", 435 => "01001", 
    436 => "01011", 437 => "01100", 438 => "00000", 439 => "00100", 
    440 => "01100", 441 => "10000", 442 => "00001", 443 => "01001", 
    444 => "01011", 445 => "10000", 446 => "01110", 447 => "00000", 
    448 => "10000", 449 => "01011", 450 => "00000", 451 => "01011", 
    452 => "01101", 453 => "01011", 454 => "00000", 455 => "01100", 
    456 => "00000", 457 => "01001", 458 => "01000", 459 => "01110", 
    460 => "01100", 461 => "10000", 462 => "01100", 463 => "01110", 
    464 => "10000", 465 => "01101", 466 => "00000", 467 => "00000", 
    468 => "01100", 469 => "10000", 470 => "01101", 471 => "00000", 
    472 => "00011", 473 => "00000", 474 => "01010", 475 => "10000", 
    476 => "00000", 477 => "01011", 478 => "01001", 479 => "00000", 
    480 => "00000", 481 => "01010", 482 => "01100", 483 => "00100", 
    484 => "10000", 485 => "00000", 486 => "00000", 487 => "01111", 
    488 => "01011", 489 => "01111", 490 => "01011", 491 => "10000", 
    492 => "01011", 493 => "00000", 494 => "00000", 495 => "01111", 
    496 => "00000", 497 => "00000", 498 => "00000", 499 => "01101", 
    500 => "01001", 501 => "01110", 502 => "10000", 503 => "01100", 
    504 => "00000", 505 => "10000", 506 => "00111", 507 => "00000", 
    508 => "10000", 509 => "01110", 510 => "01000", 511 => "01111", 
    512 => "01000", 513 => "01110", 514 => "01101", 515 => "01100", 
    516 => "01101", 517 => "00110", 518 => "00001", 519 => "01100", 
    520 => "00000", 521 => "00101", 522 => "01011", 523 => "01010", 
    524 => "01100", 525 => "00100", 526 => "00110", 527 => "00111", 
    528 => "00010", 529 => "01100", 530 => "00010", 531 => "01110", 
    532 => "01000", 533 => "00100", 534 => "10000", 535 => "10000", 
    536 => "01110", 537 => "01100", 538 => "00010", 539 => "00110", 
    540 => "01000", 541 => "01100", 542 => "01011", 543 => "00000", 
    544 => "01101", 545 => "01010", 546 => "01010", 547 => "01111", 
    548 => "01011", 549 => "01000", 550 => "01011", 551 => "00101", 
    552 => "01100", 553 => "01111", 554 => "00111", 555 => "00101", 
    556 => "01100", 557 => "00000", 558 => "00011", 559 => "00101", 
    560 => "00010", 561 => "01101", 562 => "01000", 563 => "01100", 
    564 => "01101", 565 => "01110", 566 => "00000", 567 => "00000", 
    568 => "01000", 569 => "01001", 570 => "00010", 571 => "10000", 
    572 => "00111", 573 => "00001", 574 => "01011", 575 => "01000", 
    576 => "10000", 577 => "00000", 578 => "01100", 579 => "00101", 
    580 => "00010", 581 => "01010", 582 => "01001", 583 => "01010", 
    584 => "00100", 585 => "01100", 586 => "00110", 587 => "00110", 
    588 => "01001", 589 => "01000", 590 => "00011", 591 => "00001", 
    592 => "01110", 593 => "01001", 594 => "01101", 595 => "00111", 
    596 => "01010", 597 => "00110", 598 => "01001", 599 => "00101", 
    600 => "10000", 601 => "00110", 602 => "00010", 603 => "00111", 
    604 => "01101", 605 => "01110", 606 => "10000", 607 => "01001", 
    608 => "10000", 609 => "00100", 610 => "00001", 611 => "01001", 
    612 => "01001", 613 => "00011", 614 => "01001", 615 => "01011", 
    616 => "00010", 617 => "01100", 618 => "01110", 619 => "01110", 
    620 => "01011", 621 => "01011", 622 => "01101", 623 => "00001", 
    624 => "00001", 625 => "00100", 626 => "10000", 627 => "00100", 
    628 => "00111", 629 => "00100", 630 => "00111", 631 => "01100", 
    632 => "00000", 633 => "00011", 634 => "00010", 635 => "00110", 
    636 => "01001", 637 => "00111", 638 => "00111", 639 => "00100", 
    640 => "00011", 641 => "01111", 642 => "01100", 643 => "01011", 
    644 => "01110", 645 => "01010", 646 => "01111", 647 => "01000", 
    648 => "10000", 649 => "00010", 650 => "00000", 651 => "00101", 
    652 => "01001", 653 => "00000", 654 => "01111", 655 => "00000", 
    656 => "01110", 657 => "00110", 658 => "01011", 659 => "00010", 
    660 => "00100", 661 => "00000", 662 => "01001", 663 => "00000", 
    664 => "01111", 665 => "00000", 666 => "10000", 667 => "01001", 
    668 => "01010", 669 => "00001", 670 => "00000", 671 => "00110", 
    672 => "01101", 673 => "00000", 674 => "01110", 675 => "00000", 
    676 => "01100", 677 => "00000", 678 => "00011", 679 => "00011", 
    680 => "10000", 681 => "00001", 682 => "01110", 683 => "00000", 
    684 => "01100", 685 => "00000", 686 => "01100", 687 => "00000", 
    688 => "01011", 689 => "00000", 690 => "00000", 691 => "00000", 
    692 => "00101", 693 => "01001", 694 => "01011", 695 => "01110", 
    696 => "01000", 697 => "01000", 698 => "00000", 699 => "01001", 
    700 => "00011", 701 => "00011", 702 => "00011", 703 => "00001", 
    704 => "01101", 705 => "00011", 706 => "00011", 707 => "00000", 
    708 => "00001", 709 => "00110", 710 => "00000", 711 => "01110", 
    712 => "01001", 713 => "10000", 714 => "00000", 715 => "00000", 
    716 => "01001", 717 => "00001", 718 => "01110", 719 => "00000", 
    720 => "00000", 721 => "01001", 722 => "01011", 723 => "01000", 
    724 => "10000", 725 => "01111", 726 => "00001", 727 => "00000", 
    728 => "00111", 729 => "00001", 730 => "10000", 731 => "01010", 
    732 => "00000", 733 => "00010", 734 => "00100", 735 => "00000", 
    736 => "01101", 737 => "00010", 738 => "00000", 739 => "01101", 
    740 => "00000", 741 => "01101", 742 => "01010", 743 => "00000", 
    744 => "00000", 745 => "01001", 746 => "00000", 747 => "01001", 
    748 => "00000", 749 => "00010", 750 => "01000", 751 => "00000", 
    752 => "01100", 753 => "01011", 754 => "00000", 755 => "00000", 
    756 => "10000", 757 => "00000", 758 => "00000", 759 => "01100", 
    760 => "01101", 761 => "10000", 762 => "01101", 763 => "00010", 
    764 => "00001", 765 => "00000", 766 => "00100", 767 => "01011", 
    768 => "01010", 769 => "10000", 770 => "00000", 771 => "00000", 
    772 => "00111", 773 => "01111", 774 => "00000", 775 => "01100", 
    776 => "01100", 777 => "00100", 778 => "01110", 779 => "00010", 
    780 => "01001", 781 => "00011", 782 => "01010", 783 => "00000", 
    784 => "00101", 785 => "00110", 786 => "10000", 787 => "00000", 
    788 => "10000", 789 => "00110", 790 => "00000", 791 => "01110", 
    792 => "10000", 793 => "00001", 794 => "00000", 795 => "00100", 
    796 => "01111", 797 => "00101", 798 => "10000", 799 => "00101", 
    800 => "00100", 801 => "00101", 802 => "01001", 803 => "00011", 
    804 => "01100", 805 => "01111", 806 => "01111", 807 => "01001", 
    808 => "00110", 809 => "00000", 810 => "01101", 811 => "00011", 
    812 => "01110", 813 => "01001", 814 => "00110", 815 => "01011", 
    816 => "00000", 817 => "00100", 818 => "01111", 819 => "01000", 
    820 => "00000", 821 => "01011", 822 => "01001", 823 => "01110", 
    824 => "10000", 825 => "10000", 826 => "01011", 827 => "10000", 
    828 => "00111", 829 => "00000", 830 => "10000", 831 => "10000", 
    832 => "01001", 833 => "01101", 834 => "01000", 835 => "01101", 
    836 => "01110", 837 => "00001", 838 => "00010", 839 => "00111", 
    840 => "00001", 841 => "01001", 842 => "01111", 843 => "00101", 
    844 => "00000", 845 => "01100", 846 => "01010", 847 => "01000", 
    848 => "01110", 849 => "01100", 850 => "00001", 851 => "10000", 
    852 => "01010", 853 => "10000", 854 => "01110", 855 => "01101", 
    856 => "10000", 857 => "00000", 858 => "10000", 859 => "00001", 
    860 => "01111", 861 => "01111", 862 => "00010", 863 => "00101", 
    864 => "01100", 865 => "00011", 866 => "01001", 867 => "00111", 
    868 => "01100", 869 => "00110", 870 => "00101", 871 => "01010", 
    872 => "00100", 873 => "01100", 874 => "01111", 875 => "00111", 
    876 => "10000", 877 => "01111", 878 => "01100", 879 => "01010", 
    880 => "00100", 881 => "01101", 882 => "01101", 883 => "01000", 
    884 => "00010", 885 => "00100", 886 => "00100", 887 => "00000", 
    888 => "00000", 889 => "10000", 890 => "00000", 891 => "00110", 
    892 => "10000", 893 => "00111", 894 => "00100", 895 => "01110", 
    896 => "00111", 897 => "01000", 898 => "00000", 899 => "01010", 
    900 => "01100", 901 => "01100", 902 => "01100", 903 => "00000", 
    904 => "01101", 905 => "00100", 906 => "00101", 907 => "10000", 
    908 => "10000", 909 => "00000", 910 => "00101", 911 => "01010", 
    912 => "00000", 913 => "01111", 914 => "00100", 915 => "01110", 
    916 => "00101", 917 => "01111", 918 => "01101", 919 => "00000", 
    920 => "01010", 921 => "01110", 922 => "00010", 923 => "01100", 
    924 => "01011", 925 => "01100", 926 => "00010", 927 => "01111", 
    928 => "01100", 929 => "00000", 930 => "01001", 931 => "01111", 
    932 => "00000", 933 => "01111", 934 => "00011", 935 => "01100", 
    936 => "01010", 937 => "01011", 938 => "01011", 939 => "01110", 
    940 => "00110", 941 => "01101", 942 => "01100", 943 => "10000", 
    944 => "01011", 945 => "01001", 946 => "00000", 947 => "00011", 
    948 => "00011", 949 => "00000", 950 => "01111", 951 => "10000", 
    952 => "01000", 953 => "01100", 954 => "00001", 955 => "01011", 
    956 => "01001", 957 => "01101", 958 => "00100", 959 => "01001", 
    960 => "01101", 961 => "01101", 962 => "01001", 963 => "00001", 
    964 => "01101", 965 => "10000", 966 => "00000", 967 => "01011", 
    968 => "01010", 969 => "01010", 970 => "00000", 971 => "01000", 
    972 => "00010", 973 => "00110", 974 => "01110", 975 => "00110", 
    976 => "01000", 977 => "01111", 978 => "10000", 979 => "01001", 
    980 => "01101", 981 => "01110", 982 => "00110", 983 => "00000", 
    984 => "01101", 985 => "01111", 986 => "01011", 987 => "00101", 
    988 => "10000", 989 => "01000", 990 => "01101", 991 => "00111", 
    992 => "10000", 993 => "01110", 994 => "00101", 995 => "00000", 
    996 => "01010", 997 => "01000", 998 => "00000", 999 => "01101", 
    1000 => "01010", 1001 => "00000", 1002 => "10000", 1003 => "01000", 
    1004 => "10000", 1005 => "01100", 1006 => "01101", 1007 => "01001", 
    1008 => "00110", 1009 => "00010", 1010 => "01010", 1011 => "00000", 
    1012 => "00000", 1013 => "00011", 1014 => "00101", 1015 => "10000", 
    1016 => "00111", 1017 => "10000", 1018 => "01011", 1019 => "00000", 
    1020 => "10000", 1021 => "01110", 1022 => "00000", 1023 => "00000", 
    1024 => "00001", 1025 => "01101", 1026 => "00100", 1027 => "01100", 
    1028 => "10000", 1029 => "01111", 1030 => "00100", 1031 => "01111", 
    1032 => "00011", 1033 => "00000", 1034 => "00000", 1035 => "01110", 
    1036 => "00011", 1037 => "01011", 1038 => "00100", 1039 => "01101", 
    1040 => "01010", 1041 => "10000", 1042 => "00100", 1043 => "00000", 
    1044 => "00000", 1045 => "01110", 1046 => "00000", 1047 => "01101", 
    1048 => "00000", 1049 => "00111", 1050 => "00111", 1051 => "00101", 
    1052 => "00000", 1053 => "00000", 1054 => "00000", 1055 => "01001", 
    1056 => "00001", 1057 => "01011", 1058 => "00010", 1059 => "01111", 
    1060 => "00001", 1061 => "00000", 1062 => "00000", 1063 => "00111", 
    1064 => "00000", 1065 => "01001", 1066 => "00000", 1067 => "10000", 
    1068 => "00000", 1069 => "10000", 1070 => "00000", 1071 => "01111", 
    1072 => "01001", 1073 => "00001", 1074 => "00011", 1075 => "00101", 
    1076 => "00101", 1077 => "00110", 1078 => "00101", 1079 => "00110", 
    1080 => "01100", 1081 => "01100", 1082 => "10000", 1083 => "10000", 
    1084 => "01010", 1085 => "01100", 1086 => "00010", 1087 => "00011", 
    1088 => "01011", 1089 => "01000", 1090 => "00111", 1091 => "00000", 
    1092 => "01001", 1093 => "00110", 1094 => "01011", 1095 => "00000", 
    1096 => "00000", 1097 => "00011", 1098 => "00000", 1099 => "01111", 
    1100 => "00000", 1101 => "00010", 1102 => "00101", 1103 => "01010", 
    1104 => "00101", 1105 => "01111", 1106 => "01110", 1107 => "01001", 
    1108 => "00111", 1109 => "01001", 1110 => "00000", 1111 => "01011", 
    1112 => "00100", 1113 => "01111", 1114 => "00000", 1115 => "01000", 
    1116 => "00010", 1117 => "10000", 1118 => "00000", 1119 => "00000", 
    1120 => "01000", 1121 => "00011", 1122 => "01010", 1123 => "01010", 
    1124 => "00000", 1125 => "00000", 1126 => "01001", 1127 => "00000", 
    1128 => "10000", 1129 => "00001", 1130 => "00011", 1131 => "01101", 
    1132 => "00011", 1133 => "01010", 1134 => "00111", 1135 => "00100", 
    1136 => "00000", 1137 => "00000", 1138 => "00000", 1139 => "00110", 
    1140 => "01110", 1141 => "01100", 1142 => "10000", 1143 => "00110", 
    1144 => "00010", 1145 => "00110", 1146 => "00000", 1147 => "00000", 
    1148 => "00000", 1149 => "01100", 1150 => "01000", 1151 => "00000", 
    1152 => "00000", 1153 => "01100", 1154 => "01100", 1155 => "00000", 
    1156 => "01101", 1157 => "01001", 1158 => "00000", 1159 => "01110", 
    1160 => "01100", 1161 => "00000", 1162 => "00000", 1163 => "01100", 
    1164 => "01000", 1165 => "01101", 1166 => "00000", 1167 => "01110", 
    1168 => "00000", 1169 => "01010", 1170 => "01001", 1171 => "00100", 
    1172 => "00010", 1173 => "01011", 1174 => "00000", 1175 => "01111", 
    1176 => "00001", 1177 => "01100", 1178 => "00011", 1179 => "01110", 
    1180 => "00100", 1181 => "00000", 1182 => "00111", 1183 => "00110", 
    1184 => "00000", 1185 => "10000", 1186 => "00000", 1187 => "01100", 
    1188 => "00111", 1189 => "00000", 1190 => "00110", 1191 => "01101", 
    1192 => "00001", 1193 => "10000", 1194 => "00101", 1195 => "01001", 
    1196 => "00101", 1197 => "01000", 1198 => "00000", 1199 => "01001", 
    1200 => "01011", 1201 => "01001", 1202 => "00001", 1203 => "00000", 
    1204 => "00000", 1205 => "10000", 1206 => "01111", 1207 => "01010", 
    1208 => "01011", 1209 => "00000", 1210 => "01000", 1211 => "10000", 
    1212 => "01101", 1213 => "00000", 1214 => "01111", 1215 => "01010", 
    1216 => "00101", 1217 => "00000", 1218 => "00011", 1219 => "01111", 
    1220 => "00100", 1221 => "01000", 1222 => "01001", 1223 => "01010", 
    1224 => "01011", 1225 => "00000", 1226 => "00000", 1227 => "01001", 
    1228 => "00100", 1229 => "01100", 1230 => "00000", 1231 => "00001", 
    1232 => "01111", 1233 => "01100", 1234 => "01110", 1235 => "01101", 
    1236 => "01101", 1237 => "00110", 1238 => "01011", 1239 => "00110", 
    1240 => "00100", 1241 => "10000", 1242 => "00000", 1243 => "00101", 
    1244 => "00000", 1245 => "01000", 1246 => "00101", 1247 => "00101", 
    1248 => "00101", 1249 => "00110", 1250 => "00111", 1251 => "00000", 
    1252 => "01000", 1253 => "01101", 1254 => "00000", 1255 => "00000", 
    1256 => "01010", 1257 => "00111", 1258 => "01101", 1259 => "01001", 
    1260 => "00111", 1261 => "01100", 1262 => "00000", 1263 => "01000", 
    1264 => "00001", 1265 => "01010", 1266 => "00101", 1267 => "01000", 
    1268 => "00000", 1269 => "00000", 1270 => "10000", 1271 => "01000", 
    1272 => "10000", 1273 => "10000", 1274 => "00011", 1275 => "00100", 
    1276 => "00011", 1277 => "00100", 1278 => "00000", 1279 => "10000", 
    1280 => "01011", 1281 => "00000", 1282 => "01011", 1283 => "01100", 
    1284 => "10000", 1285 => "00011", 1286 => "10000", 1287 => "00111", 
    1288 => "00000", 1289 => "01111", 1290 => "00111", 1291 => "01111", 
    1292 => "01000", 1293 => "00110", 1294 => "10000", 1295 => "01100", 
    1296 => "00111", 1297 => "01001", 1298 => "00000", 1299 => "00001", 
    1300 => "00100", 1301 => "10000", 1302 => "00011", 1303 => "00111", 
    1304 => "00000", 1305 => "01100", 1306 => "00010", 1307 => "01010", 
    1308 => "00000", 1309 => "00001", 1310 => "10000", 1311 => "10000", 
    1312 => "00000", 1313 => "01010", 1314 => "00100", 1315 => "01111", 
    1316 => "00000", 1317 => "10000", 1318 => "01110", 1319 => "01011", 
    1320 => "01011", 1321 => "00110", 1322 => "00111", 1323 => "01111", 
    1324 => "01001", 1325 => "10000", 1326 => "01010", 1327 => "01001", 
    1328 => "01011", 1329 => "00001", 1330 => "00000", 1331 => "00001", 
    1332 => "01001", 1333 => "01101", 1334 => "00100", 1335 => "01110", 
    1336 => "01011", 1337 => "00010", 1338 => "00010", 1339 => "00011", 
    1340 => "01111", 1341 => "00100", 1342 => "10000", 1343 => "00000", 
    1344 => "00010", 1345 => "01001", 1346 => "10000", 1347 => "01000", 
    1348 => "00111", 1349 => "01000", 1350 => "01100", 1351 => "01011", 
    1352 => "01001", 1353 => "00110", 1354 => "01010", 1355 => "01100", 
    1356 => "01101", 1357 => "00110", 1358 => "00101", 1359 => "01101", 
    1360 => "00100", 1361 => "00010", 1362 => "00111", 1363 => "01010", 
    1364 => "00101", 1365 => "01111", 1366 => "01011", 1367 => "00000", 
    1368 => "00010", 1369 => "00111", 1370 => "01000", 1371 => "00110", 
    1372 => "00000", 1373 => "00101", 1374 => "01111", 1375 => "01001", 
    1376 => "00110", 1377 => "00001", 1378 => "01000", 1379 => "10000", 
    1380 => "00010", 1381 => "00001", 1382 => "00110", 1383 => "01101", 
    1384 => "01111", 1385 => "00111", 1386 => "01000", 1387 => "00000", 
    1388 => "01010", 1389 => "00000", 1390 => "00111", 1391 => "01000", 
    1392 => "00111", 1393 => "01011", 1394 => "00011", 1395 => "00111", 
    1396 => "00011", 1397 => "00100", 1398 => "00010", 1399 => "00000", 
    1400 => "00000", 1401 => "10000", 1402 => "01101", 1403 => "00100", 
    1404 => "00001", 1405 => "00000", 1406 => "01000", 1407 => "00101", 
    1408 => "00000", 1409 => "01101", 1410 => "01101", 1411 => "01100", 
    1412 => "01100", 1413 => "01101", 1414 => "01100", 1415 => "01110", 
    1416 => "00000", 1417 => "01010", 1418 => "01100", 1419 => "00100", 
    1420 => "00111", 1421 => "01011", 1422 => "00000", 1423 => "00111", 
    1424 => "00001", 1425 => "01100", 1426 => "00000", 1427 => "01101", 
    1428 => "10000", 1429 => "00111", 1430 => "01001", 1431 => "01101", 
    1432 => "00000", 1433 => "00100", 1434 => "00110", 1435 => "01010", 
    1436 => "00000", 1437 => "01100", 1438 => "01000", 1439 => "00000", 
    1440 => "00010", 1441 => "01110", 1442 => "00000", 1443 => "00011", 
    1444 => "00010", 1445 => "01001", 1446 => "01000", 1447 => "01011", 
    1448 => "00110", 1449 => "01000", 1450 => "01100", 1451 => "01110", 
    1452 => "01000", 1453 => "01011", 1454 => "01110", 1455 => "01010", 
    1456 => "00000", 1457 => "00000", 1458 => "00001", 1459 => "00000", 
    1460 => "01011", 1461 => "01110", 1462 => "00000", 1463 => "01111", 
    1464 => "01110", 1465 => "01010", 1466 => "00111", 1467 => "00000", 
    1468 => "00000", 1469 => "01011", 1470 => "10000", 1471 => "00000", 
    1472 => "01101", 1473 => "01010", 1474 => "10000", 1475 => "01111", 
    1476 => "00000", 1477 => "10000", 1478 => "01110", 1479 => "01000", 
    1480 => "01010", 1481 => "10000", 1482 => "01110", 1483 => "00000", 
    1484 => "00100", 1485 => "00000", 1486 => "00110", 1487 => "10000", 
    1488 => "01100", 1489 => "01011", 1490 => "01011", 1491 => "00000", 
    1492 => "01100", 1493 => "10000", 1494 => "01110", 1495 => "00000", 
    1496 => "00000", 1497 => "01011", 1498 => "01010", 1499 => "01111", 
    1500 => "00000", 1501 => "00000", 1502 => "01000", 1503 => "01100", 
    1504 => "00011", 1505 => "00000", 1506 => "10000", 1507 => "00111", 
    1508 => "00000", 1509 => "00000", 1510 => "01110", 1511 => "00001", 
    1512 => "00001", 1513 => "01010", 1514 => "00000", 1515 => "00001", 
    1516 => "01110", 1517 => "01011", 1518 => "01100", 1519 => "01011", 
    1520 => "00010", 1521 => "01000", 1522 => "00000", 1523 => "00000", 
    1524 => "00101", 1525 => "00100", 1526 => "00000", 1527 => "00000", 
    1528 => "01000", 1529 => "00000", 1530 => "01001", 1531 => "01100", 
    1532 => "10000", 1533 => "00000", 1534 => "01011", 1535 => "00111", 
    1536 => "00100", 1537 => "00000", 1538 => "00001", 1539 => "00000", 
    1540 => "00100", 1541 => "01111", 1542 => "00000", 1543 => "01110", 
    1544 => "00100", 1545 => "01101", 1546 => "00000", 1547 => "01011", 
    1548 => "01011", 1549 => "00000", 1550 => "00101", 1551 => "00010", 
    1552 => "01111", 1553 => "00100", 1554 => "00000", 1555 => "01010", 
    1556 => "00100", 1557 => "01001", 1558 => "01000", 1559 => "00000", 
    1560 => "00101", 1561 => "01110", 1562 => "00000", 1563 => "01011", 
    1564 => "00101", 1565 => "00111", 1566 => "00000", 1567 => "00100", 
    1568 => "00101", 1569 => "01000", 1570 => "01101", 1571 => "01010", 
    1572 => "00000", 1573 => "01001", 1574 => "00000", 1575 => "00110", 
    1576 => "01110", 1577 => "01011", 1578 => "00010", 1579 => "10000", 
    1580 => "00000", 1581 => "01001", 1582 => "00010", 1583 => "01000", 
    1584 => "00011", 1585 => "00000", 1586 => "01000", 1587 => "01110", 
    1588 => "00000", 1589 => "01110", 1590 => "00110", 1591 => "01001", 
    1592 => "01101", 1593 => "10000", 1594 => "01011", 1595 => "10000", 
    1596 => "01101", 1597 => "01000", 1598 => "01000", 1599 => "00000", 
    1600 => "10000", 1601 => "00011", 1602 => "00000", 1603 => "00001", 
    1604 => "01011", 1605 => "00000", 1606 => "01100", 1607 => "00001", 
    1608 => "00110", 1609 => "00101", 1610 => "00110", 1611 => "00101", 
    1612 => "00000", 1613 => "00100", 1614 => "00101", 1615 => "00101", 
    1616 => "00010", 1617 => "00101", 1618 => "00011", 1619 => "01101", 
    1620 => "01111", 1621 => "00010", 1622 => "01010", 1623 => "00110", 
    1624 => "00011", 1625 => "10000", 1626 => "00000", 1627 => "01011", 
    1628 => "00010", 1629 => "00010", 1630 => "01000", 1631 => "00000", 
    1632 => "00111", 1633 => "00000", 1634 => "00001", 1635 => "10000", 
    1636 => "00110", 1637 => "01100", 1638 => "01011", 1639 => "01011", 
    1640 => "00001", 1641 => "00000", 1642 => "01010", 1643 => "00100", 
    1644 => "00111", 1645 => "00110", 1646 => "00001", 1647 => "01000", 
    1648 => "00000", 1649 => "00110", 1650 => "01001", 1651 => "00000", 
    1652 => "00011", 1653 => "01001", 1654 => "01110", 1655 => "01011", 
    1656 => "00001", 1657 => "10000", 1658 => "01110", 1659 => "01000", 
    1660 => "01001", 1661 => "00000", 1662 => "00010", 1663 => "01100", 
    1664 => "00111", 1665 => "00000", 1666 => "01110", 1667 => "01110", 
    1668 => "01010", 1669 => "01010", 1670 => "00010", 1671 => "00000", 
    1672 => "00000", 1673 => "01010", 1674 => "00101", 1675 => "01111", 
    1676 => "01001", 1677 => "01110", 1678 => "01000", 1679 => "10000", 
    1680 => "00000", 1681 => "00101", 1682 => "00001", 1683 => "01010", 
    1684 => "00000", 1685 => "10000", 1686 => "00000", 1687 => "10000", 
    1688 => "01010", 1689 => "10000", 1690 => "00011", 1691 => "00100", 
    1692 => "00000", 1693 => "01000", 1694 => "00011", 1695 => "10000", 
    1696 => "00100", 1697 => "10000", 1698 => "00111", 1699 => "00001", 
    1700 => "00000", 1701 => "01111", 1702 => "00110", 1703 => "01111", 
    1704 => "01100", 1705 => "10000", 1706 => "00011", 1707 => "01111", 
    1708 => "00001", 1709 => "00110", 1710 => "00001", 1711 => "00000", 
    1712 => "00010", 1713 => "00001", 1714 => "01100", 1715 => "10000", 
    1716 => "10000", 1717 => "01101", 1718 => "01101", 1719 => "00010", 
    1720 => "01001", 1721 => "01101", 1722 => "10000", 1723 => "01100", 
    1724 => "10000", 1725 => "01011", 1726 => "00010", 1727 => "00000", 
    1728 => "00100", 1729 => "00000", 1730 => "00011", 1731 => "00000", 
    1732 => "10000", 1733 => "01100", 1734 => "01110", 1735 => "00111", 
    1736 => "01111", 1737 => "01110", 1738 => "00000", 1739 => "01110", 
    1740 => "00101", 1741 => "00000", 1742 => "10000", 1743 => "01110", 
    1744 => "01111", 1745 => "01111", 1746 => "10000", 1747 => "01100", 
    1748 => "00110", 1749 => "01100", 1750 => "00000", 1751 => "10000", 
    1752 => "00010", 1753 => "00000", 1754 => "00100", 1755 => "01011", 
    1756 => "00000", 1757 => "10000", 1758 => "00100", 1759 => "01100", 
    1760 => "01011", 1761 => "00000", 1762 => "01110", 1763 => "01100", 
    1764 => "01011", 1765 => "00001", 1766 => "01011", 1767 => "00000", 
    1768 => "01100", 1769 => "00000", 1770 => "00000", 1771 => "01001", 
    1772 => "01101", 1773 => "01101", 1774 => "10000", 1775 => "00100", 
    1776 => "00011", 1777 => "00000", 1778 => "01100", 1779 => "00001", 
    1780 => "01111", 1781 => "01110", 1782 => "01110", 1783 => "01101", 
    1784 => "00000", 1785 => "00011", 1786 => "00001", 1787 => "00111", 
    1788 => "00111", 1789 => "10000", 1790 => "01011", 1791 => "00100", 
    1792 => "00101", 1793 => "01111", 1794 => "01111", 1795 => "00100", 
    1796 => "10000");



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

