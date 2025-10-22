/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<55 AND p.CommentCount>13 AND p.CommentCount<28 AND u.DownVotes>163 AND u.DownVotes<945 AND v.CreationDate>'2010-07-21 01:35:19'::timestamp AND v.CreationDate<'2011-04-17 10:50:28'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2010-08-26 07:52:37'::timestamp AND b.Date<'2012-04-09 07:48:10'::timestamp;

