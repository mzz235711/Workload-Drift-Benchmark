/*+ HashJoin(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<47 AND p.CommentCount>0 AND p.CommentCount<31 AND u.DownVotes>153 AND u.DownVotes<1688 AND v.CreationDate>'2010-05-09 17:50:40'::timestamp AND v.CreationDate<'2011-07-19 08:31:26'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2012-03-28 08:23:49'::timestamp AND b.Date<'2014-09-04 00:55:27'::timestamp;

