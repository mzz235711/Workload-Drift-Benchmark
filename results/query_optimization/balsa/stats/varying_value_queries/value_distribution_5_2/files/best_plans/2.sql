/*+ HashJoin(v p u b)
 NestLoop(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<100 AND p.CommentCount>2 AND p.CommentCount<37 AND u.DownVotes>77 AND u.DownVotes<231 AND v.CreationDate>'2009-02-03 10:07:53'::timestamp AND v.CreationDate<'2010-07-20 19:49:58'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2013-04-24 00:35:43'::timestamp AND b.Date<'2014-02-14 21:03:40'::timestamp;

