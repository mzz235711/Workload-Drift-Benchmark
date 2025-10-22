/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<107 AND p.CommentCount>4 AND p.CommentCount<13 AND u.DownVotes>596 AND u.DownVotes<1345 AND v.CreationDate>'2010-03-09 04:14:21'::timestamp AND v.CreationDate<'2013-01-24 22:03:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2013-03-03 14:33:49'::timestamp AND b.Date<'2013-08-12 09:27:19'::timestamp;

