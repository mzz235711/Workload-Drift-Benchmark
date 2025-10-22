/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<160 AND p.CommentCount>2 AND p.CommentCount<26 AND u.DownVotes>660 AND u.DownVotes<1381 AND v.CreationDate>'2009-05-22 09:40:51'::timestamp AND v.CreationDate<'2014-09-13 16:21:34'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-09-27 09:20:50'::timestamp AND b.Date<'2014-02-04 12:13:13'::timestamp;

