/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>130 AND p.Score<151 AND p.CommentCount>1 AND p.CommentCount<13 AND u.DownVotes>97 AND u.DownVotes<1413 AND v.CreationDate>'2009-05-01 22:11:28'::timestamp AND v.CreationDate<'2013-06-05 17:39:03'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2010-10-26 23:54:30'::timestamp AND b.Date<'2014-08-22 17:45:52'::timestamp;

