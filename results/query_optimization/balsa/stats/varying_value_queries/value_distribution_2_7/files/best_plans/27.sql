/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<61 AND p.CommentCount>16 AND p.CommentCount<35 AND u.DownVotes>177 AND u.DownVotes<1275 AND v.CreationDate>'2009-09-28 18:05:20'::timestamp AND v.CreationDate<'2014-03-05 12:20:23'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2011-01-31 14:49:12'::timestamp AND b.Date<'2014-09-05 22:27:19'::timestamp;

