/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<150 AND p.CommentCount>7 AND p.CommentCount<32 AND u.DownVotes>181 AND u.DownVotes<746 AND v.CreationDate>'2011-04-16 01:18:42'::timestamp AND v.CreationDate<'2011-12-07 20:41:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-09-16 13:49:38'::timestamp AND b.Date<'2011-08-23 22:36:42'::timestamp;

