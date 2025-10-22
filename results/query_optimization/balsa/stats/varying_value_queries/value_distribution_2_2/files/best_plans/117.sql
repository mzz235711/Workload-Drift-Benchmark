/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<121 AND p.CommentCount>1 AND p.CommentCount<19 AND u.DownVotes>313 AND u.DownVotes<1542 AND v.CreationDate>'2010-05-22 22:21:12'::timestamp AND v.CreationDate<'2012-11-01 14:38:46'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2010-11-20 09:16:28'::timestamp AND b.Date<'2013-09-01 12:12:09'::timestamp;

