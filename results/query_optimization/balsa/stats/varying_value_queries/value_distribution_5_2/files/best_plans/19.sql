/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<137 AND p.CommentCount>3 AND p.CommentCount<24 AND u.DownVotes>641 AND u.DownVotes<879 AND v.CreationDate>'2014-01-21 00:02:00'::timestamp AND v.CreationDate<'2014-06-27 21:47:01'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2011-12-08 23:59:33'::timestamp AND b.Date<'2012-09-04 10:23:35'::timestamp;

