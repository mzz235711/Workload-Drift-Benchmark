/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<54 AND p.CommentCount>3 AND p.CommentCount<35 AND u.DownVotes>411 AND u.DownVotes<961 AND v.CreationDate>'2009-02-22 16:30:14'::timestamp AND v.CreationDate<'2014-05-15 06:00:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2013-03-03 06:38:53'::timestamp AND b.Date<'2014-04-20 04:55:22'::timestamp;

