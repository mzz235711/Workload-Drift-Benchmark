/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<157 AND p.CommentCount>0 AND p.CommentCount<26 AND u.DownVotes>328 AND u.DownVotes<1568 AND v.CreationDate>'2011-08-08 09:39:30'::timestamp AND v.CreationDate<'2013-10-06 01:37:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-08-10 12:17:16'::timestamp AND b.Date<'2013-11-12 23:51:28'::timestamp;

