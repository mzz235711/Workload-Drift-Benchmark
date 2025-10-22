/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<154 AND p.CommentCount>3 AND p.CommentCount<24 AND u.DownVotes>5 AND u.DownVotes<624 AND v.CreationDate>'2010-02-21 06:39:59'::timestamp AND v.CreationDate<'2011-06-17 14:39:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-12-18 15:18:24'::timestamp AND b.Date<'2013-06-24 13:47:00'::timestamp;

