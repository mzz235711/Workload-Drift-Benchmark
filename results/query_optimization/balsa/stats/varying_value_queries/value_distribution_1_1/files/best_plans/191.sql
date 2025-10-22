/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<48 AND p.CommentCount>5 AND p.CommentCount<8 AND u.DownVotes>222 AND u.DownVotes<1893 AND v.CreationDate>'2010-09-18 14:13:08'::timestamp AND v.CreationDate<'2011-09-08 04:51:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-09-10 15:27:01'::timestamp AND b.Date<'2014-02-19 04:56:06'::timestamp;

