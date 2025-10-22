/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<153 AND p.CommentCount>5 AND p.CommentCount<37 AND u.DownVotes>485 AND u.DownVotes<827 AND v.CreationDate>'2011-11-14 13:33:25'::timestamp AND v.CreationDate<'2014-06-30 01:32:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-08-31 01:38:49'::timestamp AND b.Date<'2013-12-07 19:26:59'::timestamp;

