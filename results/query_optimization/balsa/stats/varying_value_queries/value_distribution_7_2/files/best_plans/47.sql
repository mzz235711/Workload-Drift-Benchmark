/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>98 AND p.Score<170 AND p.CommentCount>6 AND p.CommentCount<16 AND u.DownVotes>113 AND u.DownVotes<511 AND v.CreationDate>'2011-06-04 09:43:12'::timestamp AND v.CreationDate<'2014-03-08 17:07:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-02-01 00:16:21'::timestamp AND b.Date<'2013-01-17 02:35:58'::timestamp;

