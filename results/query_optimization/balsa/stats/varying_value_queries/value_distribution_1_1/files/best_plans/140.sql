/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<129 AND p.CommentCount>14 AND p.CommentCount<38 AND u.DownVotes>641 AND u.DownVotes<1742 AND v.CreationDate>'2010-11-01 13:20:48'::timestamp AND v.CreationDate<'2012-10-16 06:25:31'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2013-07-28 07:43:26'::timestamp AND b.Date<'2014-06-17 10:06:09'::timestamp;

