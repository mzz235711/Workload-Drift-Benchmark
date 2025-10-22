/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<27 AND p.CommentCount>5 AND p.CommentCount<33 AND u.DownVotes>581 AND u.DownVotes<1151 AND v.CreationDate>'2009-09-28 12:51:08'::timestamp AND v.CreationDate<'2012-05-25 09:48:54'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2010-11-02 03:22:18'::timestamp AND b.Date<'2013-06-23 01:15:33'::timestamp;

