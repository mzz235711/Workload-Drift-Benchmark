/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<100 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>201 AND u.DownVotes<494 AND v.CreationDate>'2012-09-27 17:26:49'::timestamp AND v.CreationDate<'2013-01-04 18:11:40'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2013-08-17 07:19:32'::timestamp AND b.Date<'2014-06-11 00:13:12'::timestamp;

