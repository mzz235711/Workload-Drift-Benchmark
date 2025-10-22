/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<174 AND p.CommentCount>6 AND p.CommentCount<8 AND u.DownVotes>137 AND u.DownVotes<652 AND v.CreationDate>'2010-02-04 08:51:56'::timestamp AND v.CreationDate<'2012-01-08 09:23:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-07-01 17:56:07'::timestamp AND b.Date<'2013-03-10 13:50:18'::timestamp;

