/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>136 AND p.Score<144 AND p.CommentCount>8 AND p.CommentCount<26 AND u.DownVotes>46 AND u.DownVotes<1494 AND v.CreationDate>'2009-07-30 17:07:47'::timestamp AND v.CreationDate<'2014-05-11 09:49:58'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-07-04 01:05:37'::timestamp AND b.Date<'2013-09-09 11:41:57'::timestamp;

