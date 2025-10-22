/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<45 AND p.CommentCount>14 AND p.CommentCount<43 AND u.DownVotes>272 AND u.DownVotes<1481 AND v.CreationDate>'2011-04-28 23:22:04'::timestamp AND v.CreationDate<'2012-08-01 14:47:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-05-19 12:53:00'::timestamp AND b.Date<'2011-09-27 22:17:27'::timestamp;

