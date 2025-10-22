/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<154 AND p.CommentCount>9 AND p.CommentCount<21 AND u.DownVotes>719 AND u.DownVotes<1690 AND v.CreationDate>'2012-02-06 00:00:45'::timestamp AND v.CreationDate<'2012-08-01 22:37:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-05-20 07:36:23'::timestamp AND b.Date<'2013-12-16 16:34:18'::timestamp;

