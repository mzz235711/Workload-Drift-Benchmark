/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<145 AND p.CommentCount>0 AND p.CommentCount<3 AND u.DownVotes>7 AND u.DownVotes<1872 AND v.CreationDate>'2011-09-11 16:51:46'::timestamp AND v.CreationDate<'2011-12-31 08:58:39'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2011-01-15 11:53:26'::timestamp AND b.Date<'2011-12-24 23:25:37'::timestamp;

