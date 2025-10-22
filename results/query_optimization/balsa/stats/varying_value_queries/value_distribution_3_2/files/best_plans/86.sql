/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<183 AND p.CommentCount>7 AND p.CommentCount<44 AND u.DownVotes>280 AND u.DownVotes<440 AND v.CreationDate>'2012-06-22 06:27:47'::timestamp AND v.CreationDate<'2013-02-01 22:08:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-10-02 15:12:16'::timestamp AND b.Date<'2013-09-08 09:41:31'::timestamp;

