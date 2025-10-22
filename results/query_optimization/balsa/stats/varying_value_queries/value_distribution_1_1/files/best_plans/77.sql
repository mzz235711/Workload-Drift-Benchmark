/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>144 AND p.Score<157 AND p.CommentCount>3 AND p.CommentCount<10 AND u.DownVotes>8 AND u.DownVotes<1621 AND v.CreationDate>'2010-04-07 17:09:19'::timestamp AND v.CreationDate<'2012-05-18 15:42:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-02-18 09:40:11'::timestamp AND b.Date<'2012-06-20 14:45:27'::timestamp;

