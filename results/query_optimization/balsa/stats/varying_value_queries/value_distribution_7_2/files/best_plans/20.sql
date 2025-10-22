/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<34 AND p.CommentCount>15 AND p.CommentCount<38 AND u.DownVotes>744 AND u.DownVotes<1560 AND v.CreationDate>'2010-12-09 01:24:21'::timestamp AND v.CreationDate<'2014-08-12 15:12:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-03-17 22:50:49'::timestamp AND b.Date<'2014-08-29 21:10:42'::timestamp;

