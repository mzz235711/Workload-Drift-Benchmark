/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<47 AND p.CommentCount>6 AND p.CommentCount<43 AND u.DownVotes>348 AND u.DownVotes<1408 AND v.CreationDate>'2009-06-05 10:20:04'::timestamp AND v.CreationDate<'2012-12-10 12:55:12'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<9 AND b.Date>'2010-08-08 07:37:29'::timestamp AND b.Date<'2013-03-04 16:30:25'::timestamp;

