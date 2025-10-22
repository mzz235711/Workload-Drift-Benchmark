/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<77 AND p.CommentCount>3 AND p.CommentCount<9 AND u.DownVotes>261 AND u.DownVotes<1386 AND v.CreationDate>'2011-01-28 09:43:30'::timestamp AND v.CreationDate<'2013-05-27 21:21:26'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2013-05-05 00:05:10'::timestamp AND b.Date<'2013-09-15 01:43:30'::timestamp;

