/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<90 AND p.CommentCount>18 AND p.CommentCount<24 AND u.DownVotes>151 AND u.DownVotes<1355 AND v.CreationDate>'2011-05-14 02:04:46'::timestamp AND v.CreationDate<'2012-07-14 19:47:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-04-05 04:51:30'::timestamp AND b.Date<'2014-02-20 04:43:59'::timestamp;

