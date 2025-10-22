/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<167 AND p.CommentCount>9 AND p.CommentCount<33 AND u.DownVotes>13 AND u.DownVotes<942 AND v.CreationDate>'2010-10-21 02:18:20'::timestamp AND v.CreationDate<'2012-03-14 10:36:44'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-06-20 07:04:50'::timestamp AND b.Date<'2013-05-14 05:46:41'::timestamp;

