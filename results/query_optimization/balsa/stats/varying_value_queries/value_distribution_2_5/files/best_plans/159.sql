/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<144 AND p.CommentCount>2 AND p.CommentCount<8 AND u.DownVotes>654 AND u.DownVotes<1151 AND v.CreationDate>'2009-11-29 14:18:52'::timestamp AND v.CreationDate<'2012-07-25 14:40:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-02-20 03:00:43'::timestamp AND b.Date<'2012-12-07 07:00:12'::timestamp;

