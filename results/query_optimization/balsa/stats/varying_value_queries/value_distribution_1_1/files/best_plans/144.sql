/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<34 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>619 AND u.DownVotes<854 AND v.CreationDate>'2011-05-23 01:38:54'::timestamp AND v.CreationDate<'2013-08-10 10:33:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-10-19 08:46:37'::timestamp AND b.Date<'2014-06-09 02:15:57'::timestamp;

