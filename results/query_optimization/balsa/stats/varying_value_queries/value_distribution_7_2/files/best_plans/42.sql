/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<154 AND p.CommentCount>3 AND p.CommentCount<11 AND u.DownVotes>302 AND u.DownVotes<751 AND v.CreationDate>'2009-12-17 04:27:08'::timestamp AND v.CreationDate<'2013-08-03 03:00:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2010-10-17 14:12:47'::timestamp AND b.Date<'2011-09-14 19:27:54'::timestamp;

