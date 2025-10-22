/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<71 AND p.CommentCount>6 AND p.CommentCount<31 AND u.DownVotes>697 AND u.DownVotes<1440 AND v.CreationDate>'2010-09-14 08:52:21'::timestamp AND v.CreationDate<'2012-06-26 12:11:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2013-08-11 09:35:18'::timestamp AND b.Date<'2014-05-08 21:42:32'::timestamp;

