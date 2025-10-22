/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<94 AND p.CommentCount>5 AND p.CommentCount<15 AND u.DownVotes>417 AND u.DownVotes<997 AND v.CreationDate>'2011-02-25 19:19:16'::timestamp AND v.CreationDate<'2012-01-03 18:11:13'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-12-23 12:33:32'::timestamp AND b.Date<'2013-08-18 21:46:25'::timestamp;

