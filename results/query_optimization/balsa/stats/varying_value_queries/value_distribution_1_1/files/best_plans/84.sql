/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<74 AND p.CommentCount>9 AND p.CommentCount<29 AND u.DownVotes>11 AND u.DownVotes<1782 AND v.CreationDate>'2010-08-19 04:55:18'::timestamp AND v.CreationDate<'2012-06-06 11:46:31'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2014-03-18 13:12:15'::timestamp AND b.Date<'2014-04-30 18:35:25'::timestamp;

