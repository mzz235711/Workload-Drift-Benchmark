/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<114 AND p.CommentCount>6 AND p.CommentCount<21 AND u.DownVotes>352 AND u.DownVotes<574 AND v.CreationDate>'2012-02-22 10:17:08'::timestamp AND v.CreationDate<'2014-05-17 14:53:26'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2011-05-23 22:48:55'::timestamp AND b.Date<'2012-04-01 09:35:13'::timestamp;

