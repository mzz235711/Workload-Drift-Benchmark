/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<173 AND p.CommentCount>31 AND p.CommentCount<36 AND u.DownVotes>66 AND u.DownVotes<1319 AND v.CreationDate>'2009-06-13 00:49:08'::timestamp AND v.CreationDate<'2013-04-07 18:00:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-04-20 14:03:39'::timestamp AND b.Date<'2013-06-08 04:37:28'::timestamp;

