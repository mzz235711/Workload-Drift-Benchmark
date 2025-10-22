/*+ MergeJoin(b ph u pl p v)
 HashJoin(ph u pl p v)
 HashJoin(ph u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((ph (u (pl p))) v))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.CommentCount<=17 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-02 17:02:16'::timestamp AND pl.CreationDate<='2014-09-08 13:11:30'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views<=9 AND u.UpVotes<=17;

