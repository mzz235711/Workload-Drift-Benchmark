/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<110 AND p.CommentCount>8 AND p.CommentCount<18 AND u.DownVotes>33 AND u.DownVotes<183 AND v.CreationDate>'2009-10-29 05:25:47'::timestamp AND v.CreationDate<'2013-12-26 15:26:53'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2013-10-14 17:06:41'::timestamp AND b.Date<'2014-06-18 13:00:42'::timestamp;

