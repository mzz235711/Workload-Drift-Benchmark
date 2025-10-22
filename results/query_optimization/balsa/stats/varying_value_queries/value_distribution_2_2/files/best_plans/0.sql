/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<181 AND p.CommentCount>3 AND p.CommentCount<34 AND u.DownVotes>196 AND u.DownVotes<1296 AND v.CreationDate>'2010-02-10 02:44:17'::timestamp AND v.CreationDate<'2012-07-11 02:50:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-05-22 14:52:54'::timestamp AND b.Date<'2013-10-21 22:23:11'::timestamp;

