/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>106 AND p.Score<178 AND p.CommentCount>1 AND p.CommentCount<44 AND u.DownVotes>536 AND u.DownVotes<844 AND v.CreationDate>'2013-05-14 14:14:57'::timestamp AND v.CreationDate<'2013-10-05 13:24:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-07-20 17:49:26'::timestamp AND b.Date<'2012-08-03 19:05:38'::timestamp;

