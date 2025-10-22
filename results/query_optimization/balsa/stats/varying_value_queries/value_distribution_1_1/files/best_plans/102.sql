/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<86 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>107 AND u.DownVotes<567 AND v.CreationDate>'2010-04-13 03:01:55'::timestamp AND v.CreationDate<'2011-11-15 05:44:05'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2014-02-21 16:33:08'::timestamp AND b.Date<'2014-03-21 11:38:56'::timestamp;

