/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<94 AND p.CommentCount>5 AND p.CommentCount<22 AND u.DownVotes>366 AND u.DownVotes<939 AND v.CreationDate>'2009-04-21 10:10:13'::timestamp AND v.CreationDate<'2014-02-26 14:21:10'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-12-06 15:34:27'::timestamp AND b.Date<'2013-11-17 23:40:03'::timestamp;

