/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<70 AND p.CommentCount>14 AND p.CommentCount<23 AND u.DownVotes>176 AND u.DownVotes<757 AND v.CreationDate>'2010-02-09 05:50:12'::timestamp AND v.CreationDate<'2014-02-13 16:30:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-03-20 12:38:49'::timestamp AND b.Date<'2012-06-04 01:16:49'::timestamp;

