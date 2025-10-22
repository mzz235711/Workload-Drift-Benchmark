/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<17 AND p.CommentCount>11 AND p.CommentCount<21 AND u.DownVotes>683 AND u.DownVotes<1814 AND v.CreationDate>'2011-12-29 12:08:13'::timestamp AND v.CreationDate<'2012-02-17 00:05:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-08-27 14:09:54'::timestamp AND b.Date<'2012-11-30 02:12:55'::timestamp;

