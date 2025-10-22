/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<104 AND p.CommentCount>7 AND p.CommentCount<34 AND u.DownVotes>738 AND u.DownVotes<1686 AND v.CreationDate>'2010-11-13 16:57:24'::timestamp AND v.CreationDate<'2013-09-07 10:48:10'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2013-08-19 03:36:35'::timestamp AND b.Date<'2014-03-14 08:25:58'::timestamp;

