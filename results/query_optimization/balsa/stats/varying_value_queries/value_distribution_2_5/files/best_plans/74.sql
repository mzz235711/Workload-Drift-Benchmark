/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<148 AND p.CommentCount>3 AND p.CommentCount<36 AND u.DownVotes>624 AND u.DownVotes<1407 AND v.CreationDate>'2010-06-24 04:17:22'::timestamp AND v.CreationDate<'2011-09-07 10:56:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-06-08 23:32:02'::timestamp AND b.Date<'2011-06-21 14:12:59'::timestamp;

