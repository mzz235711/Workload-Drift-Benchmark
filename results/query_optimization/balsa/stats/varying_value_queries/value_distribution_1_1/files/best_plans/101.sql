/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>71 AND p.Score<116 AND p.CommentCount>14 AND p.CommentCount<22 AND u.DownVotes>76 AND u.DownVotes<347 AND v.CreationDate>'2009-07-04 07:28:29'::timestamp AND v.CreationDate<'2012-01-10 13:59:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2012-05-02 06:38:53'::timestamp AND b.Date<'2014-08-25 03:14:28'::timestamp;

