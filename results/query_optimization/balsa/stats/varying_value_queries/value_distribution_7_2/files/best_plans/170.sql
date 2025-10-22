/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<121 AND p.CommentCount>18 AND p.CommentCount<42 AND u.DownVotes>492 AND u.DownVotes<788 AND v.CreationDate>'2012-04-14 07:22:21'::timestamp AND v.CreationDate<'2013-09-14 23:15:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-07-22 20:45:00'::timestamp AND b.Date<'2014-05-01 20:07:39'::timestamp;

