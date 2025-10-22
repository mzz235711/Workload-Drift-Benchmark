/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<133 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>104 AND u.DownVotes<1528 AND v.CreationDate>'2013-09-03 03:43:14'::timestamp AND v.CreationDate<'2014-05-23 09:09:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-04-15 06:30:37'::timestamp AND b.Date<'2014-08-13 05:49:58'::timestamp;

