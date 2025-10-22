/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>53 AND p.Score<130 AND p.CommentCount>0 AND p.CommentCount<4 AND u.DownVotes>102 AND u.DownVotes<287 AND v.CreationDate>'2010-05-03 21:08:37'::timestamp AND v.CreationDate<'2014-04-17 00:30:38'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2011-03-17 05:12:46'::timestamp AND b.Date<'2012-04-27 16:10:44'::timestamp;

