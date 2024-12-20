import 'package:ui/core/enums.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/model/blog_group/blog_group.dart';

List<BlogList> blogData = [
  BlogList(
    id: 1,
    publishDate: DateTime(2023, 1, 1),
    title: 'First Blog',
    titleAr: 'المدونة الأولى',
    description: 'This is the first blog.',
    descriptionAr: 'هذه هي المدونة الأولى.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image1.jpg',
    videoUrl: 'https://example.com/video1.mp4',
    group: BlogGroup(id: 1, groupName: 'Tech'),
    author: ''
  ),
  BlogList(
    id: 2,
    publishDate: DateTime(2023, 2, 1),
    title: 'Second Blog',
    titleAr: 'المدونة الثانية',
    description: 'This is the second blog.',
    descriptionAr: 'هذه هي المدونة الثانية.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image2.jpg',
    videoUrl: 'https://example.com/video2.mp4',
    group: BlogGroup(id: 2, groupName: 'Health'),
      author: ''

  ),
  BlogList(
    id: 3,
    publishDate: DateTime(2023, 3, 1),
    title: 'Third Blog',
    titleAr: 'المدونة الثالثة',
    description: 'This is the third blog.',
    descriptionAr: 'هذه هي المدونة الثالثة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image3.jpg',
    videoUrl: 'https://example.com/video3.mp4',
    group: BlogGroup(id: 3, groupName: 'Lifestyle'),
      author: ''

  ),
  BlogList(
    id: 4,
    publishDate: DateTime(2023, 4, 1),
    title: 'Fourth Blog',
    titleAr: 'المدونة الرابعة',
    description: 'This is the fourth blog.',
    descriptionAr: 'هذه هي المدونة الرابعة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image4.jpg',
    videoUrl: 'https://example.com/video4.mp4',
    group: BlogGroup(id: 4, groupName: 'Finance'),
      author: ''

  ),
  BlogList(
    id: 5,
    publishDate: DateTime(2023, 5, 1),
    title: 'Fifth Blog',
    titleAr: 'المدونة الخامسة',
    description: 'This is the fifth blog.',
    descriptionAr: 'هذه هي المدونة الخامسة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image5.jpg',
    videoUrl: 'https://example.com/video5.mp4',
    group: BlogGroup(id: 5, groupName: 'Education'),
      author: ''

  ),
  BlogList(
    id: 6,
    publishDate: DateTime(2023, 6, 1),
    title: 'Sixth Blog',
    titleAr: 'المدونة السادسة',
    description: 'This is the sixth blog.',
    descriptionAr: 'هذه هي المدونة السادسة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image6.jpg',
    videoUrl: 'https://example.com/video6.mp4',
    group: BlogGroup(id: 6, groupName: 'Travel'),
      author: ''

  ),
  BlogList(
    id: 7,
    publishDate: DateTime(2023, 7, 1),
    title: 'Seventh Blog',
    titleAr: 'المدونة السابعة',
    description: 'This is the seventh blog.',
    descriptionAr: 'هذه هي المدونة السابعة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image7.jpg',
    videoUrl: 'https://example.com/video7.mp4',
    group: BlogGroup(id: 7, groupName: 'Food'),
      author: ''

  ),
  BlogList(
    id: 8,
    publishDate: DateTime(2023, 8, 1),
    title: 'Eighth Blog',
    titleAr: 'المدونة الثامنة',
    description: 'This is the eighth blog.',
    descriptionAr: 'هذه هي المدونة الثامنة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image8.jpg',
    videoUrl: 'https://example.com/video8.mp4',
    group: BlogGroup(id: 8, groupName: 'Fashion'),
      author: ''

  ),
  BlogList(
    id: 9,
    publishDate: DateTime(2023, 9, 1),
    title: 'Ninth Blog',
    titleAr: 'المدونة التاسعة',
    description: 'This is the ninth blog.',
    descriptionAr: 'هذه هي المدونة التاسعة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image9.jpg',
    videoUrl: 'https://example.com/video9.mp4',
    group: BlogGroup(id: 9, groupName: 'Sports'),
      author: ''

  ),
  BlogList(
    id: 10,
    publishDate: DateTime(2023, 10, 1),
    title: 'Tenth Blog',
    titleAr: 'المدونة العاشرة',
    description: 'This is the tenth blog.',
    descriptionAr: 'هذه هي المدونة العاشرة.',
    blogType: BlogType.article,
    imageUrl: 'https://example.com/image10.jpg',
    videoUrl: 'https://example.com/video10.mp4',
    group: BlogGroup(id: 10, groupName: 'Entertainment'),
      author: ''

  ),
];
