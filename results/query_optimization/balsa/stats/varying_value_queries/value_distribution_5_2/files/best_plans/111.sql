/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<173 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>294 AND u.DownVotes<1467 AND v.CreationDate>'2009-11-29 01:28:26'::timestamp AND v.CreationDate<'2012-12-11 05:58:40'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2010-12-05 19:35:30'::timestamp AND b.Date<'2011-10-28 02:04:36'::timestamp;

