/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<176 AND p.CommentCount>7 AND p.CommentCount<22 AND u.DownVotes>147 AND u.DownVotes<1803 AND v.CreationDate>'2011-09-28 00:26:01'::timestamp AND v.CreationDate<'2013-03-11 18:45:56'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-01-19 15:13:12'::timestamp AND b.Date<'2012-12-02 18:23:00'::timestamp;

