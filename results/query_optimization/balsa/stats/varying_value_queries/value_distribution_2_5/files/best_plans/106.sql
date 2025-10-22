/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<94 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>33 AND u.DownVotes<1095 AND v.CreationDate>'2010-11-01 16:54:15'::timestamp AND v.CreationDate<'2013-09-29 06:42:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-11-13 11:58:59'::timestamp AND b.Date<'2013-05-17 12:54:27'::timestamp;

